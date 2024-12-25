import 'package:route_mate/core/utils/constants.dart';
import 'package:route_mate/core/utils/helpers.dart';
import 'package:route_mate/modules/dashboard/notifications/domain/models/notifications.dart';
import 'package:route_mate/modules/dashboard/notifications/providers/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({super.key, required this.notification});
  final NotificationModel notification;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(horizontal: kXSmall, vertical: kSmall),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(kSmall),
      ),
      child: ListTile(
        onTap: () {
          showGeneralDialog(
            context: context,
            pageBuilder: (context, animation, secondaryAnimation) {
              return Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(notification.title),
                    const Divider(),
                    Text(notification.body),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {
                              context
                                  .read<NotificationsBloc>()
                                  .add(ReadNotifications(id: notification.id));
                              // Close dialog
                              context.pop();
                            },
                            child: const Text("Close"))
                      ],
                    )
                  ],
                ),
              );
            },
          );
        },
        contentPadding: EdgeInsets.zero,
        // leading: notification.read
        //     ? Container(
        //         width: 50,
        //         height: 50,
        //         padding: const EdgeInsets.all(2),
        //         decoration: const BoxDecoration(
        //             gradient: LinearGradient(
        //                 colors: [Colors.red, Colors.orangeAccent],
        //                 begin: Alignment.topCenter,
        //                 end: Alignment.bottomLeft),
        //             shape: BoxShape.circle),
        //         child: Container(
        //             decoration: BoxDecoration(
        //                 shape: BoxShape.circle,
        //                 border: Border.all(color: Colors.white, width: 3)),
        //             child: CachedImage(
        //               url: notification.image ?? "",
        //               height: 80,
        //               width: 80,
        //             )),
        //       )
        //     : Container(
        //         width: 50,
        //         height: 50,
        //         decoration: BoxDecoration(
        //             shape: BoxShape.circle,
        //             border: Border.all(color: Colors.grey.shade300, width: 1)),
        //         child: ClipRRect(
        //             borderRadius: BorderRadius.circular(50),
        //             child: Image.network(notification.image ?? "")),
        //       ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.sizeOf(context).width / 2),
              child: Text(
                notification.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              Helpers.timeAgo(notification.createdAt),
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color:
                        Theme.of(context).colorScheme.secondary.withOpacity(.8),
                  ),
            ),
          ],
        ),
        subtitle: Text(
          notification.body,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.onSurface.withOpacity(.8),
              ),
        ),
      ),
    );
  }
}
