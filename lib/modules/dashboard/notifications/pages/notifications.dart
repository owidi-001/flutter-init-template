import 'package:route_mate/core/utils/constants.dart';
import 'package:route_mate/core/utils/enums.dart';
import 'package:route_mate/core/widgets/empty_widget.dart';
import 'package:route_mate/core/widgets/failed_widget.dart';
import 'package:route_mate/core/widgets/login_prompt.dart';
import 'package:route_mate/core/widgets/widgets.dart';
import 'package:route_mate/modules/authentication/domain/repository/auth.repo.dart';
import 'package:route_mate/modules/dashboard/notifications/pages/widgets/notification_tile.dart';
import 'package:route_mate/modules/dashboard/notifications/providers/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    context.read<NotificationsBloc>().add(InitNotifications());
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            "Notifications",
          ),
          centerTitle: false,
        ),
        body: StreamBuilder<AuthenticationStatus>(
            stream: AuthenticationRepository.instance.statusStream,
            initialData: AuthenticationRepository.instance.status,
            builder: (context, snapshot) {
              final isAuthenticated =
                  snapshot.data == AuthenticationStatus.authenticated;
              return isAuthenticated
                  ? RefreshIndicator(
                      onRefresh: () async {
                        context
                            .read<NotificationsBloc>()
                            .add(InitNotifications());
                      },
                      child: BlocBuilder<NotificationsBloc, NotificationsState>(
                        builder: (context, state) {
                          if (state.status == ServiceStatus.loading) {
                            return const SpinnerWidget(
                              size: kLarge,
                            );
                          }
                          if (state.status == ServiceStatus.failure) {
                            return const FailedWidget();
                          }
                          return state.notifications.isEmpty
                              ? const EmptyWidget()
                              : ListView.separated(
                                  itemCount: state.notifications.length,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: kSmall, horizontal: kSmall),
                                  itemBuilder: (context, index) {
                                    final notification =
                                        state.notifications[index];
                                    return Slidable(
                                      endActionPane: ActionPane(
                                        motion: const ScrollMotion(),
                                        children: [
                                          SlidableAction(
                                            // An action can be bigger than the others.
                                            flex: 2,
                                            onPressed: (context) {
                                              context
                                                  .read<NotificationsBloc>()
                                                  .add(DeleteNotifications(
                                                      id: notification.id));
                                            },
                                            backgroundColor: Theme.of(context)
                                                .colorScheme
                                                .error,
                                            foregroundColor: Theme.of(context)
                                                .colorScheme
                                                .onError,
                                            icon: Icons.remove,
                                            label: 'Delete',
                                          ),
                                        ],
                                      ),
                                      child: NotificationTile(
                                          notification: notification),
                                    );
                                  },
                                  separatorBuilder: (context, index) =>
                                      const Divider(
                                    color: Colors.transparent,
                                  ),
                                );
                        },
                      ),
                    )
                  : const Center(
                      child: LoginRequiredPrompt(),
                    );
            }));
  }
}
