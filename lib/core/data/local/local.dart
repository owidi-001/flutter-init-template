import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalDataHandler {
  static final Future<SharedPreferences> _prefs =
      SharedPreferences.getInstance();

  // Theme modes
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

  // Auth token data
  static void saveToken(String token, String refreshToken) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setString("TOKEN", token);
    prefs.setString("REFRESH_TOKEN", refreshToken);
  }

  static Future<String?> loadToken() async {
    final SharedPreferences prefs = await _prefs;
    final String? data = prefs.getString('TOKEN');
    debugPrint("Loaded token: $data");
    return data;
  }

  // Mark started
  static void markStarted() async {
    final SharedPreferences prefs = await _prefs;
    prefs.setBool("STARTED", true);
  }

  static Future<bool> getStarted() async {
    final SharedPreferences prefs = await _prefs;
    final bool? data = prefs.getBool('STARTED');
    return data ?? false;
  }
}
