import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:route_mate/core/data/snack_message/snack_message.dart';
import 'package:route_mate/core/utils/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'internet_event.dart';
part 'internet_state.dart';

class ConnectivityBloc extends Bloc<ConnectivityEvent, ConnectivityState> {
  final Connectivity _connectivity;
  final Dio _dio = Dio(BaseOptions(
    baseUrl: "https://api.github.com/",
    receiveDataWhenStatusError: true,
    connectTimeout: const Duration(milliseconds: TIMEOUT),
    sendTimeout: const Duration(milliseconds: TIMEOUT),
    receiveTimeout: const Duration(milliseconds: TIMEOUT),
  ));
  late StreamSubscription<List<ConnectivityResult>> _subscription;

  ConnectivityBloc(this._connectivity) : super(const ConnectivityState()) {
    // Initialize checker
    _initializeConnectivity();

    _subscription = _connectivity.onConnectivityChanged.listen((result) {
      add(ConnectivityChanged(result));
    });

    // Handle connectivity change
    on<ConnectivityChanged>(_onConnectivityChanged);
  }

  Future<void> _initializeConnectivity() async {
    final result = await _connectivity.checkConnectivity();
    add(ConnectivityChanged(result));
  }

  Future<void> _onConnectivityChanged(
      ConnectivityChanged event, Emitter<ConnectivityState> emit) async {
    if (event.connectivityResult.contains(ConnectivityResult.none) ||
        event.connectivityResult.isEmpty) {
      emit(state.copyWith(
        status: ConnectivityStatusEnum.DISCONNECTED,
        connectivityResult: event.connectivityResult,
        message: const SnackMessage(
            tone: SnackTone.error, message: "No internet connection"),
      ));
    } else {
      final hasInternet = await _hasInternetConnection();
      if (hasInternet) {
        emit(state.copyWith(
            status: ConnectivityStatusEnum.CONNECTED,
            connectivityResult: event.connectivityResult,
            message: const SnackMessage(
                tone: SnackTone.success,
                message: "Connected to the internet")));
      } else {
        emit(state.copyWith(
          status: ConnectivityStatusEnum.NOINTERNET,
          connectivityResult: event.connectivityResult,
          message: const SnackMessage(
              tone: SnackTone.warning, message: "No internet access"),
        ));
      }
    }
  }

  Future<bool> _hasInternetConnection() async {
    try {
      final response = await _dio.get("");
      return response.statusCode == 200;
    } catch (e) {
      if (e is DioException) {
        // Check if the error is due to a connection issue
        if (e.type == DioExceptionType.connectionTimeout ||
            e.type == DioExceptionType.receiveTimeout) {
          return false;
        }
      }
      return false;
    }
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
