import 'package:route_mate/core/data/services/service.dart';
import 'package:route_mate/modules/dashboard/history/domain/models/order.dart';

class OrderService {
  HttpResult<List<Order>> getOrders() => Http.get(
        "/rentals/",
        deserializer: (data) => List<Order>.from(
          data.map(
            (e) => Order.fromJson(e),
          ),
        ),
      );
}
