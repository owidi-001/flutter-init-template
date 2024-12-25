part of 'bloc.dart';

abstract class OrderEvent extends Equatable {
  const OrderEvent();

  @override
  List<Object> get props => [];
}

class InitOrders extends OrderEvent {}

class RefreshOrders extends OrderEvent {}

class OpenOrder extends OrderEvent {
  final Order order;
  const OpenOrder({required this.order});
  @override
  List<Object> get props => [order];
}
