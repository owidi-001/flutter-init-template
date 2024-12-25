part of 'bloc.dart';

class OrderState extends Equatable {
  final ServiceStatus status;
  final SnackMessage? message;
  final List<Order> orders;

  const OrderState({
    this.status = ServiceStatus.initial,
    this.message,
    this.orders = const [],
  });

  OrderState copyWith({
    ServiceStatus? status,
    SnackMessage? message,
    List<Order>? orders,
  }) {
    return OrderState(
      status: status ?? this.status,
      message: message ?? this.message,
      orders: orders ?? this.orders,
    );
  }

  @override
  List<Object> get props => [status, orders];
}
