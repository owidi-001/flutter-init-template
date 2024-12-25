part of 'bloc.dart';

abstract class NotificationsEvent extends Equatable {
  const NotificationsEvent();
  @override
  List<Object> get props => [];
}

class InitNotifications extends NotificationsEvent {}

class ReadNotifications extends NotificationsEvent {
  final int id;

  const ReadNotifications({required this.id});
  @override
  List<Object> get props => [id];
}


class DeleteNotifications extends NotificationsEvent {
  final int id;

  const DeleteNotifications({required this.id});
  @override
  List<Object> get props => [id];
}
