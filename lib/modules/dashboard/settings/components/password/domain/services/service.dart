import 'package:route_mate/core/data/services/service.dart';
import 'package:route_mate/modules/dashboard/settings/components/password/domain/models/password_change_model.dart';

class PasswordService {
  HttpResult<String> changePassword(PasswordChangeModel data) => Http.post(
        "/auth/update-password/",
        data.toJson(),
        deserializer: (data) => data.message,
      );
}
