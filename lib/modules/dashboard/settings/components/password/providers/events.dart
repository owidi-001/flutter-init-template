part of 'bloc.dart';

abstract class PasswordEvent extends Equatable {
  const PasswordEvent();

  @override
  List<Object> get props => [];
}

class SubmitPasswords extends PasswordEvent {
  final PasswordChangeModel payload;

  const SubmitPasswords({required this.payload});

  @override
  List<Object> get props => [payload];
}
