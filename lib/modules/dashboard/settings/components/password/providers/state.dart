part of 'bloc.dart';

class PasswordState extends Equatable {
  const PasswordState({
    this.message,
    this.status = ServiceStatus.initial,
    this.oldPassword,
    this.newPassword,
    this.newPasswordConfirm,
  });

  final SnackMessage? message;
  final ServiceStatus status;
  final String? oldPassword;
  final String? newPassword;
  final String? newPasswordConfirm;

  PasswordState copyWith({
    String? oldPassword,
    SnackMessage? message,
    ServiceStatus? status,
    String? newPassword,
    String? newPasswordConfirm,
  }) {
    return PasswordState(
        oldPassword: oldPassword ?? this.oldPassword,
        newPassword: newPassword ?? this.newPassword,
        newPasswordConfirm: newPasswordConfirm ?? this.newPasswordConfirm,
        message: message ?? this.message,
        status: status ?? this.status);
  }

  @override
  List<Object?> get props => [newPassword,newPasswordConfirm, message, status, oldPassword];
}
