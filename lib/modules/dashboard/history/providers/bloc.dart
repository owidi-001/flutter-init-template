import 'package:equatable/equatable.dart';
import 'package:route_mate/core/data/services/service.dart';
import 'package:route_mate/core/data/snack_message/snack_message.dart';
import 'package:route_mate/core/providers/internet_providers/internet_bloc.dart';
import 'package:route_mate/core/utils/enums.dart';
import 'package:route_mate/modules/dashboard/history/domain/models/order.dart';
import 'package:route_mate/modules/dashboard/history/domain/services/order_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'events.dart';
part 'state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  late OrderService _service;
  OrderBloc(ConnectivityBloc internetStream) : super(const OrderState()) {
    _service = service<OrderService>();

    on<InitOrders>((event, emit) async {
      emit(state.copyWith(status: ServiceStatus.loading));

      final res = await _service.getOrders();

      res.when(onError: (error) {
        emit(
          state.copyWith(
            status: ServiceStatus.failure,
            message:
                SnackMessage(tone: SnackTone.error, message: error.message),
          ),
        );
      }, onSuccess: (data) {
        emit(
          state.copyWith(status: ServiceStatus.success, orders: data),
        );
      });
    });
  }
}
