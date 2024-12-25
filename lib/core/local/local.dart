import 'package:route_mate/modules/authentication/domain/models/user.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class LocalDataHandler {
  static final Future<SharedPreferences> _prefs =
      SharedPreferences.getInstance();

  //// THEME
  static Future<ThemeMode> loadTheme() async {
    final SharedPreferences prefs = await _prefs;
    final String? mode = prefs.getString('THEME');
    debugPrint("Loaded theme: $mode");
    if (mode != null && mode.toUpperCase() == "DARK") {
      return ThemeMode.dark;
    } else if (mode != null && mode.toUpperCase() == "LIGHT") {
      return ThemeMode.light;
    }
    return ThemeMode.system;
  }

  static void saveTheme(ThemeMode mode) async {
    final SharedPreferences prefs = await _prefs;
    if (mode == ThemeMode.dark) {
      prefs.setString("THEME", "DARK");
      debugPrint("Theme saved ${mode.toString()}");
    } else if (mode == ThemeMode.light) {
      prefs.setString("THEME", "LIGHT");
      debugPrint("Theme saved ${mode.toString()}");
    }
  }
  //// END THEME

  // TOKEN
  static void saveToken(String token) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setString("TOKEN", token);
  }

  static Future<String?> loadToken() async {
    final SharedPreferences prefs = await _prefs;
    final String? data = prefs.getString('TOKEN');
    debugPrint("Loaded token: $data");
    return data;
  }

  static Future<void> removeToken() async {
    final SharedPreferences prefs = await _prefs;
    await prefs.remove("TOKEN");
    debugPrint("Token removed");
  }

  //// END TOKEN
  ///
  /// USER
  static Future<void> storeUserData(User user) async {
    await SharedPreferences.getInstance().then(
      (value) => value.setString("USER", jsonEncode(user.toJson())),
    );
  }

  static Future<User?> getUserData() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString("USER");
    if (data != null) {
      return User.fromJson(jsonDecode(data));
    }
    return null;
  }

  /// Clear user data from local storage
  static Future<User?> clearUserData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    return null;
  }

  /// END USER

//// BOARDING
  static void onboarded() async {
    final SharedPreferences prefs = await _prefs;
    prefs.setBool("ONBOARDED", true);
  }

  static Future<bool> isOnBoarded() async {
    final SharedPreferences prefs = await _prefs;
    final bool? data = prefs.getBool('ONBOARDED');
    debugPrint("Loaded token: $data");
    return data ?? false;
  }
  //// END BOARDED
}
