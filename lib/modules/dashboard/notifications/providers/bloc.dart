import 'package:equatable/equatable.dart';
import 'package:route_mate/core/data/services/service.dart';
import 'package:route_mate/core/data/snack_message/snack_message.dart';
import 'package:route_mate/core/providers/internet_providers/internet_bloc.dart';
import 'package:route_mate/core/utils/enums.dart';
import 'package:route_mate/core/utils/helpers.dart';
import 'package:route_mate/modules/dashboard/notifications/domain/models/notifications.dart';
import 'package:route_mate/modules/dashboard/notifications/domain/services/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'events.dart';
part 'state.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  late NotificationService _service;
  final ConnectivityBloc _connectivity;
  NotificationsBloc(this._connectivity) : super(const NotificationsState()) {
    // Init service
    _service = service<NotificationService>();
    // Fetch notifications
    on<InitNotifications>((event, emit) async {
      emit(state.copyWith(status: ServiceStatus.loading));

      // Load notifications
      if (_connectivity.state.status == ConnectivityStatusEnum.CONNECTED) {
        emit(state.copyWith(status: ServiceStatus.loading));

        // //   Make request
        final res = await _service.getNotifications();

        //   Handle response
        res.when(onError: (error) {
          emit(state.copyWith(
              status: ServiceStatus.failure,
              message:
                  SnackMessage(tone: SnackTone.error, message: error.message)));
        }, onSuccess: (data) {
          emit(state.copyWith(
              status: ServiceStatus.success, notifications: data));
        });
      } else {
        emit(
          state.copyWith(
            status: ServiceStatus.failure,
            message: SnackMessage(
              tone: SnackTone.warning,
              message: Helpers.connectivityStatusMessage(
                _connectivity.state.status,
              ),
            ),
          ),
        );
      }
    });

    // Read notification
    on<ReadNotifications>(
      (event, emit) async {
        emit(state.copyWith(status: ServiceStatus.submitting));

        final res = await _service.readNotification(event.id);

        res.when(
          onError: (error) {
            emit(state.copyWith(
                status: ServiceStatus.failure,
                message: SnackMessage(
                    tone: SnackTone.error, message: error.message)));
          },
          onSuccess: (data) {
            final updatedNotifications = state.notifications;
            updatedNotifications.map((e) {
              if (e.id == data.id) {
                return data;
              }
              return e;
            });
            emit(state.copyWith(
                notifications: updatedNotifications,
                status: ServiceStatus.submissionSuccess));
          },
        );
      },
    );

    // Delete notification
    on<DeleteNotifications>(
      (event, emit) async {
        emit(state.copyWith(status: ServiceStatus.submitting));

        final res = await _service.deleteNotification(event.id);

        res.when(
          onError: (error) {
            emit(state.copyWith(
                status: ServiceStatus.failure,
                message: SnackMessage(
                    tone: SnackTone.error, message: error.message)));
          },
          onSuccess: (data) {
            final updatedNotifications = state.notifications;
            updatedNotifications.removeWhere(
              (element) => element.id == event.id,
            );
            emit(state.copyWith(
                notifications: updatedNotifications,
                status: ServiceStatus.submissionSuccess,
                message: SnackMessage(tone: SnackTone.success, message: data)));
          },
        );
      },
    );
  }
}
