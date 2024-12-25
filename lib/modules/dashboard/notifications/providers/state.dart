part of '../../../../../modules/dashboard/notifications/providers/bloc.dart';

class NotificationsState extends Equatable {
  const NotificationsState(
      {this.notifications = const [],
      this.status = ServiceStatus.initial,
      this.message});

  final List<NotificationModel> notifications;
  final ServiceStatus status;
  final SnackMessage? message;

  NotificationsState copyWith(
      {List<NotificationModel>? notifications,
      ServiceStatus? status,
      SnackMessage? message}) {
    return NotificationsState(
        notifications: notifications ?? this.notifications,
        status: status ?? this.status,
        message: message);
  }

  @override
  List<Object?> get props => [notifications, status, message];
}
