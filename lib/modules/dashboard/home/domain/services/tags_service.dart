import 'package:route_mate/core/data/services/service.dart';
import 'package:route_mate/modules/dashboard/home/domain/models/product.dart';

class TagsService {
  HttpResult<List<Tag>> getTags() => Http.get(
        "/config/tags/",
        deserializer: (data) => List<Tag>.from(
          data.map(
            (e) => Tag.fromJson(e),
          ),
        ),
      );
}
