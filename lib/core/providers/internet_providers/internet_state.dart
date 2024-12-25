part of 'internet_bloc.dart';

enum ConnectivityStatusEnum { CONNECTED, NOINTERNET, DISCONNECTED, NONE }

class ConnectivityState extends Equatable {
  final ConnectivityStatusEnum status;
  final List<ConnectivityResult> connectivityResult;
  final SnackMessage? message;

  const ConnectivityState({
    this.status = ConnectivityStatusEnum.NONE,
    this.connectivityResult = const [],
    this.message,
  });

  ConnectivityState copyWith({
    ConnectivityStatusEnum? status,
    List<ConnectivityResult>? connectivityResult,
    SnackMessage? message,
  }) {
    return ConnectivityState(
      status: status ?? this.status,
      connectivityResult: connectivityResult ?? this.connectivityResult,
      message: message ?? this.message,
    );
  }

  @override
  List<Object?> get props => [status, connectivityResult, message];
}
