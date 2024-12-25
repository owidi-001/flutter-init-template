part of 'bloc.dart';

class AuthState extends Equatable {
  final ServiceStatus status;
  final ServiceStatus otpRequestStatus;
  final SnackMessage? message;
  final ServiceStatus passwordStatus;
  final ServiceStatus countriesStatus;

  const AuthState(
      {this.status = ServiceStatus.initial,
      this.otpRequestStatus = ServiceStatus.initial,
      this.passwordStatus = ServiceStatus.initial,
      this.countriesStatus = ServiceStatus.initial,
      this.message,
      });

  AuthState copyWith(
      {ServiceStatus? status,
      ServiceStatus? otpRequestStatus,
      ServiceStatus? passwordStatus,
      ServiceStatus? countriesStatus,
      SnackMessage? message,
      }) {
    return AuthState(
        status: status ?? this.status,
        otpRequestStatus: otpRequestStatus ?? this.otpRequestStatus,
        passwordStatus: passwordStatus ?? this.passwordStatus,
        countriesStatus: countriesStatus ?? this.countriesStatus,
        
        message: message ?? this.message);
  }

  @override
  List<Object?> get props => [
        status,
        otpRequestStatus,
        passwordStatus,
        countriesStatus,
        
        message
      ];
}
