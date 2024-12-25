import 'package:route_mate/core/data/services/service.dart';
import 'package:route_mate/modules/dashboard/home/domain/models/product.dart';
import 'package:dio/dio.dart';

class ProductService {
  // Query products with conditional parameters
  HttpResult<List<Product>> getProducts(ProductQuery query) => Http.get(
        "/product/merchant-products/",
        queryParams: query.toQueryParameters(),
        deserializer: (data) => List<Product>.from(
          data.map(
            (e) => Product.fromJson(e),
          ),
        ),
      );

  // Create Product
  HttpResult<Product> createProduct(ProductCreateData request) async {
    FormData data = FormData.fromMap(request.toJson());

    var image = await MultipartFile.fromFile(request.poster!.path);
    data.files.add(MapEntry('poster', image));

    return Http.post("/product/", data,
        deserializer: (json) => Product.fromJson(json));
  }
}
