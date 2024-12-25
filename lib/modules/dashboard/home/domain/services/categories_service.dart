import 'package:route_mate/core/data/services/service.dart';
import 'package:route_mate/modules/dashboard/home/domain/models/category.dart';

class CategoriesService {
  HttpResult<List<ProductCategory>> getCategories() => Http.get(
        "/config/categories/",
        deserializer: (data) => List<ProductCategory>.from(
          data.map(
            (e) => ProductCategory.fromJson(e),
          ),
        ),
      );
}
