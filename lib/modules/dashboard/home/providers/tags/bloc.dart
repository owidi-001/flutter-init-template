import 'package:route_mate/core/data/services/service.dart';
import 'package:route_mate/core/data/snack_message/snack_message.dart';
import 'package:route_mate/core/providers/internet_providers/internet_bloc.dart';
import 'package:route_mate/core/utils/enums.dart';
import 'package:route_mate/modules/dashboard/home/domain/models/product.dart';
import 'package:route_mate/modules/dashboard/home/domain/services/tags_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'events.dart';
part 'state.dart';

class TagBloc extends Bloc<TagEvent, TagState> {
  late TagsService _service;
  TagBloc(ConnectivityBloc internetStream) : super(const TagState()) {
    _service = service<TagsService>();

    on<InitTags>((event, emit) async {
      emit(state.copyWith(status: ServiceStatus.loading));

      final res = await _service.getTags();

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
          state.copyWith(status: ServiceStatus.success, tags: data),
        );
      });
    });
  }
}
