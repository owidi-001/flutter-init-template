import 'package:route_mate/core/data/services/service.dart';
import 'package:route_mate/modules/dashboard/notifications/domain/models/notifications.dart';

class NotificationService {
  HttpResult<List<NotificationModel>> getNotifications() =>
      Http.get("/notification/",
          deserializer: (data) => List<NotificationModel>.from(
              data.map((e) => NotificationModel.fromJson(e))));

  HttpResult<NotificationModel> readNotification(int id) =>
      Http.put("/notification/$id", {},
          deserializer: (data) => NotificationModel.fromJson(data));

  // Delete
  HttpResult<String> deleteNotification(int id) =>
      Http.delete("/notification/$id", deserializer: (data) => data["message"]);
}
