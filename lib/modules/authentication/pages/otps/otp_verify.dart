import 'package:route_mate/core/data/snack_message/snack_message.dart';
import 'package:route_mate/core/utils/constants.dart';
import 'package:route_mate/core/utils/enums.dart';
import 'package:route_mate/core/utils/helpers.dart';
import 'package:route_mate/core/utils/validators.dart';
import 'package:route_mate/core/widgets/app_button.dart';
import 'package:route_mate/core/widgets/app_logo.dart';
import 'package:route_mate/core/widgets/app_textfield.dart';
import 'package:route_mate/core/widgets/widgets.dart';
import 'package:route_mate/modules/authentication/domain/dtos/otp/otp_verify.dart';
import 'package:route_mate/modules/authentication/providers/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:route_mate/routes/go_route.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key, required this.params});
  final Map<String, dynamic> params;

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final GlobalKey<FormState> otpKey = GlobalKey<FormState>();
  TextEditingController otpController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController newPasswordConfirmController = TextEditingController();
  bool obsecurePass = true;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.status == ServiceStatus.submissionSuccess) {
          context.goNamed(widget.params["nextRoute"]);
          if (widget.params["nextRoute"] == AppRoutes.resetSuccess) {}
        }
        if (state.message != null) {
          Helpers.showSnackBar(context, state.message!);
        }
      },
      listenWhen: (previous, current) =>
          previous.message != current.message ||
          previous.status != current.status,
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.zero,
          child: Form(
            key: otpKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Canva section
                Container(
                  height: MediaQuery.sizeOf(context).height * .3,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    image: const DecorationImage(
                        image: AssetImage("assets/auth/otp.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(kXXXLarge),
                        bottomRight: Radius.circular(kXXXLarge)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kMedium),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const AppLogo(),
                            const SizedBox(
                              height: kSmall,
                            ),
                            Text(
                              'OTP Verification',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                            ),
                          ],
                        ),
                        BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, state) {
                            return state.otpRequestStatus ==
                                        ServiceStatus.submitting ||
                                    state.status == ServiceStatus.submitting
                                ? const SizedBox(
                                    height: 24,
                                    width: 24,
                                    child: SpinnerWidget(
                                      size: kLarge,
                                    ),
                                  )
                                : const SizedBox.shrink();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                // End canvas
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kMedium),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: kLarge,
                      ),
                      Text(
                        'Enter OTP sent to your email/phone',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontWeight: FontWeight.w400,
                            fontSize: 17),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      PinCodeTextField(
                        controller: otpController,
                        appContext: context,
                        length: 4,
                        obscureText: false,
                        animationType: AnimationType.fade,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(5),
                          fieldHeight: 50,
                          fieldWidth: 40,
                          activeFillColor:
                              Theme.of(context).colorScheme.surface,
                        ),
                        validator: (value) {
                          if (value == null || value.length < 4) {
                            return "Enter a valid OTP";
                          }
                          return null;
                        },
                        onChanged: (value) {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      if (widget.params["purpose"] ==
                          OTPPurpose.RESET_PASSWORD) ...<Widget>[
                        Text(
                          'Password',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onSurface,
                              fontWeight: FontWeight.w400,
                              fontSize: 17),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InputField(
                          onTap: () => {},
                          hint: "Pick a strong password",
                          controller: newPasswordController,
                          hideText: obsecurePass,
                          validator: (p0) {
                            if (widget.params["purpose"] ==
                                OTPPurpose.RESET_PASSWORD) {
                              return passwordValidator(p0);
                            }
                            return null;
                          },
                          onChanged: (p0) {
                            setState(() {});
                          },
                          showPass: () {
                            setState(() {
                              obsecurePass = !obsecurePass;
                            });
                          },

                          // focus: null,
                        ),
                        const SizedBox(
                          height: kMedium,
                        ),
                        Text(
                          'Password',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onSurface,
                              fontWeight: FontWeight.w400,
                              fontSize: 17),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InputField(
                          onTap: () => {},
                          hint: "Confirm your new password above",
                          controller: newPasswordConfirmController,
                          hideText: obsecurePass,
                          validator: (p0) {
                            if (widget.params["purpose"] ==
                                OTPPurpose.RESET_PASSWORD) {
                              return passwordConfirmValidator(
                                  newPasswordController.text, p0);
                            }
                            return null;
                          },
                          onChanged: (p0) {
                            setState(() {});
                          },
                          showPass: () {
                            setState(() {
                              obsecurePass = !obsecurePass;
                            });
                          },

                          // focus: null,
                        ),
                        const SizedBox(
                          height: kMedium,
                        ),
                      ],
                      BlocBuilder<AuthBloc, AuthState>(
                        builder: (context, state) {
                          return AuthButton(
                            text: "Verify OTP",
                            loading: state.status == ServiceStatus.submitting,
                            onTap: () {
                              if (otpKey.currentState!.validate()) {
                                final payload = OTPVerifyPayload(
                                    code: otpController.text,
                                    purpose: widget.params["purpose"],
                                    receiver: widget.params["receiver"],
                                    password: widget.params["purpose"] ==
                                            OTPPurpose.RESET_PASSWORD
                                        ? newPasswordController.text
                                        : null);

                                // if (widget.params["purpose"] ==
                                //     OTPPurpose.RESET_PASSWORD) {
                                //   payload.copyWith(
                                //       password: newPasswordController.text);
                                // }
                                // debugPrint(newPasswordController.text);
                                // debugPrint(payload.toJson().toString());
                                context
                                    .read<AuthBloc>()
                                    .add(VerifyOtpEvent(payload));
                              } else {
                                Helpers.showSnackBar(
                                    context,
                                    const SnackMessage(
                                        tone: SnackTone.error,
                                        message: "Fill in the form correctly"));
                              }
                            },
                          );
                        },
                      ),
                      const SizedBox(
                        height: kLarge,
                      ),
                      GestureDetector(
                        onTap: () {
                          // Logic to resend OTP
                          context.read<AuthBloc>().add(
                                RequestOtpEvent(
                                  payload: OTPRequestPayload(
                                    channel: OTPChannels.SMS,
                                    purpose: widget.params["purpose"],
                                    receiver: widget.params["receiver"],
                                    value: widget.params["value"],
                                  ),
                                ),
                              );
                        },
                        child: Align(
                          alignment: Alignment.center,
                          child: RichText(
                            text: TextSpan(
                              text: 'Didn\'t receive the code? ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Colors.grey,
                                  ),
                              children: [
                                TextSpan(
                                  text: 'Resend',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
