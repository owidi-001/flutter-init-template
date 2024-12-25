import 'package:equatable/equatable.dart';
import 'package:route_mate/core/data/services/service.dart';
import 'package:route_mate/core/data/snack_message/snack_message.dart';
import 'package:route_mate/core/providers/internet_providers/internet_bloc.dart';
import 'package:route_mate/core/utils/enums.dart';
import 'package:route_mate/modules/authentication/domain/repository/auth.repo.dart';
import 'package:route_mate/modules/dashboard/settings/components/password/domain/models/password_change_model.dart';
import 'package:route_mate/modules/dashboard/settings/components/password/domain/services/service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'events.dart';
part 'state.dart';

class PasswordBloc extends Bloc<PasswordEvent, PasswordState> {
  late PasswordService _service;

  PasswordBloc(ConnectivityBloc internetStream) : super(const PasswordState()) {
    _service = service<PasswordService>();
    final repo = AuthenticationRepository.instance;
    // Submit
    on<SubmitPasswords>(
      (event, emit) async {
        emit(state.copyWith(status: ServiceStatus.submitting));

        final res = await _service.changePassword(event.payload);

        res.when(
          onError: (error) {
            emit(
              state.copyWith(
                status: ServiceStatus.failure,
                message:
                    SnackMessage(tone: SnackTone.error, message: error.message),
              ),
            );
          },
          onSuccess: (data) {
            emit(
              state.copyWith(
                status: ServiceStatus.submissionSuccess,
                message: SnackMessage(tone: SnackTone.success, message: data),
              ),
            );

            // Logout user
            repo.logout();
          },
        );
      },
    );
  }
}
