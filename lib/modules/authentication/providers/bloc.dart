import 'package:equatable/equatable.dart';
import 'package:route_mate/core/data/services/service.dart';
import 'package:route_mate/core/data/snack_message/snack_message.dart';
import 'package:route_mate/core/providers/internet_providers/internet_bloc.dart';
import 'package:route_mate/core/utils/enums.dart';
import 'package:route_mate/core/utils/helpers.dart';
import 'package:route_mate/modules/authentication/domain/dtos/login_dtos/login_data.dart';
import 'package:route_mate/modules/authentication/domain/dtos/passwords_dtos/password_change.dart';
import 'package:route_mate/modules/authentication/domain/dtos/otp/otp_verify.dart';
import 'package:route_mate/modules/authentication/domain/models/user.dart';
import 'package:route_mate/modules/authentication/domain/repository/auth.repo.dart';
import 'package:route_mate/modules/authentication/domain/services/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'events.dart';
part 'state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  late AuthService _service;
  final AuthenticationRepository _repository;
  final ConnectivityBloc _connectivity;

  AuthBloc(this._connectivity, this._repository) : super(const AuthState()) {
    // Initialize client service
    _service = service<AuthService>();

    // Login
    on<LoginEvent>((event, emit) async {
      // Indicate submitting status
      emit(
        state.copyWith(
          status: ServiceStatus.submitting,
        ),
      );
      // Check if internet is connected
      if (_connectivity.state.status == ConnectivityStatusEnum.CONNECTED) {
        //   Make request
        final res = await _service.login(event.data);

        //   Handle response
        res.when(onError: (error) {
          emit(state.copyWith(
              status: ServiceStatus.submissionFailure,
              message:
                  SnackMessage(tone: SnackTone.error, message: error.message)));
        }, onSuccess: (data) async {
          // Update state
          emit(state.copyWith(
            status: ServiceStatus.submissionSuccess,
            message: const SnackMessage(
                tone: SnackTone.success, message: "Login Successful"),
          ));
          // Send data to repository
          await _repository.login(data.token);
        });
      } else {
        debugPrint(_connectivity.state.status.toString());
        emit(
          state.copyWith(
            status: ServiceStatus.submissionFailure,
            message: SnackMessage(
              tone: SnackTone.warning,
              message:
                  Helpers.connectivityStatusMessage(_connectivity.state.status),
            ),
          ),
        );
      }
    });

    //   Update profile
    on<ProfileUpdate>((event, emit) async {
      emit(state.copyWith(status: ServiceStatus.submitting));

      final res = await _repository.updateUser(event.data);

      res.when(onError: (error) {
        emit(
          state.copyWith(
            status: ServiceStatus.submissionFailure,
            message: SnackMessage(
              tone: SnackTone.error,
              message: error.message,
            ),
          ),
        );
        debugPrint(error.message);
      }, onSuccess: (data) {
        //   Update repo
        emit(state.copyWith(
          status: ServiceStatus.submissionSuccess,
          message: const SnackMessage(
              tone: SnackTone.success, message: "Changes saved successfully"),
        ));
      });
    });

    //   Change password
    on<ChangePassword>((event, emit) async {
      emit(
        state.copyWith(passwordStatus: ServiceStatus.submitting),
      );

      final res = await _service.changePassword(event.data);

      res.when(onError: (error) {
        emit(
          state.copyWith(
            passwordStatus: ServiceStatus.submissionFailure,
            message: SnackMessage(
              tone: SnackTone.error,
              message: error.message,
            ),
          ),
        );
        debugPrint(error.message);
      }, onSuccess: (data) {
        //   Update repo
        emit(
          state.copyWith(
            passwordStatus: ServiceStatus.submissionSuccess,
            message: SnackMessage(
                tone: SnackTone.success,
                message: data["message"] ?? "Password changed successfully"),
          ),
        );

        //   Logout user to log in with new password
        _repository.logout();
      });
    });

    // OTP Request
    on<RequestOtpEvent>(
      (event, emit) async {
        // Indicate submitting status
        emit(
          state.copyWith(
            otpRequestStatus: ServiceStatus.submitting,
          ),
        );
        // Check if internet is connected
        if (_connectivity.state.status == ConnectivityStatusEnum.CONNECTED) {
          //   Make request
          final res = await _service.requestOTP(event.payload);

          //   Handle response
          res.when(onError: (error) {
            emit(state.copyWith(
                otpRequestStatus: ServiceStatus.submissionFailure,
                message: SnackMessage(
                    tone: SnackTone.error, message: error.message)));
          }, onSuccess: (data) async {
            // Update state
            emit(state.copyWith(
              otpRequestStatus: ServiceStatus.submissionSuccess,
              message: SnackMessage(tone: SnackTone.success, message: data),
            ));
          });
        } else {
          debugPrint(_connectivity.state.status.toString());
          emit(
            state.copyWith(
              otpRequestStatus: ServiceStatus.submissionFailure,
              message: SnackMessage(
                tone: SnackTone.warning,
                message: Helpers.connectivityStatusMessage(
                    _connectivity.state.status),
              ),
            ),
          );
        }
      },
    );
    // OTP Verify
    on<VerifyOtpEvent>((event, emit) async {
      emit(state.copyWith(status: ServiceStatus.submitting));

      if (_connectivity.state.status == ConnectivityStatusEnum.CONNECTED) {
        final res = await _service.verifyOTP(event.payload);

        await res.when(
          onError: (error) async {
            emit(state.copyWith(
              status: ServiceStatus.submissionFailure,
              message:
                  SnackMessage(tone: SnackTone.error, message: error.message),
            ));
          },
          onSuccess: (data) async {
            await _repository.login(data.token);

            emit(state.copyWith(
              status: ServiceStatus.submissionSuccess,
              message: const SnackMessage(
                  tone: SnackTone.success,
                  message: "OTP Verification Successful"),
            ));
          },
        );
      } else {
        debugPrint(_connectivity.state.status.toString());
        emit(state.copyWith(
          status: ServiceStatus.submissionFailure,
          message: SnackMessage(
            tone: SnackTone.warning,
            message: Helpers.connectivityStatusMessage(
              _connectivity.state.status,
            ),
          ),
        ));
      }
    });
  }
}
