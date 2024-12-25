part of 'bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

// Login event
class LoginEvent extends AuthEvent {
  final LoginData data;
  const LoginEvent({required this.data});
  @override
  List<Object> get props => [data];
}


//Profile get
class FetchProfile extends AuthEvent {}

//Profile update
class ProfileUpdate extends AuthEvent {
  final UserUpdateData data;

  const ProfileUpdate(this.data);
}

// Change password
class ChangePassword extends AuthEvent {
  final PasswordChangeRequest data;

  const ChangePassword(this.data);
}

class VerifyOtpEvent extends AuthEvent {
  final OTPVerifyPayload payload;

  const VerifyOtpEvent(this.payload);
}

class RequestOtpEvent extends AuthEvent {
  final OTPRequestPayload payload;
  const RequestOtpEvent({required this.payload});
}
