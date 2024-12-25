import 'package:route_mate/modules/dashboard/history/providers/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:route_mate/core/data/services/service.dart';
import 'package:route_mate/core/data/snack_message/snack_message.dart';
import 'package:route_mate/core/providers/internet_providers/internet_bloc.dart';
import 'package:route_mate/core/utils/enums.dart';
import 'package:route_mate/modules/dashboard/home/domain/models/product.dart';
import 'package:route_mate/modules/dashboard/home/domain/services/product_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'events.dart';
part 'state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  late ProductService _service;
  final OrderBloc orderBloc;
  ProductBloc(this.orderBloc, ConnectivityBloc internetStream)
      : super(const ProductState()) {
    _service = service<ProductService>();
    // Get products
    on<FetchProducts>((event, emit) async {
      emit(state.copyWith(status: ServiceStatus.loading));

      final res = await _service.getProducts(event.query);

      res.when(onError: (error) {
        emit(
          state.copyWith(
            status: ServiceStatus.failure,
            message:
                SnackMessage(tone: SnackTone.error, message: error.message),
          ),
        );
      }, onSuccess: (response) {
        emit(
          state.copyWith(
            status: ServiceStatus.success,
            products: response,
          ),
        );
      });
    });

    // Create product
    on<CreateProduct>(
      (event, emit) async {
        emit(state.copyWith(status: ServiceStatus.submitting));

        final res = await _service.createProduct(event.data);

        res.when(onError: (error) {
          emit(
            state.copyWith(
              status: ServiceStatus.failure,
              message:
                  SnackMessage(tone: SnackTone.error, message: error.message),
            ),
          );
        }, onSuccess: (response) {
          // Refresh products
          add(FetchProducts(query: state.query));
          // Update data
          emit(
            state.copyWith(
                status: ServiceStatus.success,
                // products: ,
                message: const SnackMessage(
                    tone: SnackTone.success,
                    message: "Product Added successfully!")),
          );
        });
      },
    );
  }
}
