import 'dart:async';

import 'package:route_mate/core/data/multiple_results/multiple_results.dart';
import 'package:route_mate/core/data/services/service.dart';
import 'package:route_mate/core/local/local.dart';
import 'package:route_mate/modules/authentication/domain/services/services.dart';
import 'package:route_mate/modules/authentication/domain/models/user.dart';

import 'package:flutter/cupertino.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository {
  AuthenticationRepository._();
  static AuthenticationRepository instance = AuthenticationRepository._();

  final _statusController = StreamController<AuthenticationStatus>.broadcast();
  final _userController = StreamController<User?>.broadcast();

  AuthenticationStatus _status = AuthenticationStatus.unknown;
  User? _user;
  String? authToken;

  // Streams
  Stream<AuthenticationStatus> get statusStream async* {
    yield _status;
    yield* _statusController.stream;
  }

  Stream<User?> get userStream async* {
    yield _user;
    yield* _userController.stream;
  }

  User? get user => _user;
  AuthenticationStatus get status => _status;

  Future<void> login(String authToken) async {
    this.authToken = authToken;

    if (user?.id == -1 || user == null) {
      final res = await getUser();
      res.when(
          onError: (error) {
            debugPrint(error.message);
          },
          onSuccess: (user) => _user = user);
    } else {
      _user = user;
    }
    _status = AuthenticationStatus.authenticated;
    _statusController.add(_status);
  }

  HttpResult<User> getUser() async {
    if (_user != null && _user!.id != -1) {
      return MultipleResult.onSuccess(data: _user!);
    }

    final localUserData = await LocalDataHandler.getUserData();
    if (localUserData != null) {
      _user = localUserData;
      _userController.add(_user); // Emit local data
      return MultipleResult.onSuccess(data: localUserData);
    }

    final result = await service<AuthService>().fetchProfile();
    result.when(
      onSuccess: (data) {
        _user = data;
        _userController.add(data); // Emit fetched user
        LocalDataHandler.storeUserData(data);
      },
      onError: (error) => debugPrint(error.message),
    );

    return result;
  }

  HttpResult<User> updateUser(UserUpdateData data) async {
    final result = await service<AuthService>().updateProfile(data);
    result.when(
      onSuccess: (updatedData) {
        _user = updatedData;
        _userController.add(updatedData); // Emit updated user
        LocalDataHandler.storeUserData(updatedData);
      },
      onError: (error) => debugPrint(error.message),
    );
    return result;
  }

  void logout() {
    _status = AuthenticationStatus.unauthenticated;
    authToken = null;
    _user = null;
    _userController.add(null); // Emit null user on logout
    _statusController.add(_status);

    LocalDataHandler.removeToken();
    LocalDataHandler.clearUserData();
  }
}
