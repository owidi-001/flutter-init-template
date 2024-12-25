import 'package:route_mate/core/data/services/service.dart';
import 'package:route_mate/core/data/snack_message/snack_message.dart';
import 'package:route_mate/core/providers/internet_providers/internet_bloc.dart';
import 'package:route_mate/core/utils/enums.dart';
import 'package:route_mate/modules/dashboard/home/domain/models/category.dart';
import 'package:route_mate/modules/dashboard/home/domain/services/categories_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'events.dart';
part 'state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  late CategoriesService _service;
  CategoryBloc(ConnectivityBloc internetStream) : super(const CategoryState()) {
    _service = service<CategoriesService>();

    on<InitCategories>((event, emit) async {
      emit(state.copyWith(status: ServiceStatus.loading));

      final res = await _service.getCategories();

      // debugPrint("Categories Response: $res");

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
          state.copyWith(status: ServiceStatus.success, categories: data),
        );
      });
    });
  }
}
