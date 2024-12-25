import 'package:route_mate/core/data/snack_message/snack_message.dart';
import 'package:route_mate/core/utils/constants.dart';
import 'package:route_mate/core/utils/enums.dart';
import 'package:route_mate/core/utils/helpers.dart';
import 'package:route_mate/core/utils/validators.dart';
import 'package:route_mate/core/widgets/app_button.dart';
import 'package:route_mate/modules/authentication/domain/dtos/otp/otp_verify.dart';
import 'package:route_mate/modules/authentication/providers/bloc.dart';
import 'package:route_mate/modules/authentication/widgets/auth_page_header.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:route_mate/routes/go_route.dart';

class OtpRequestScreen extends StatefulWidget {
  const OtpRequestScreen({super.key, required this.params});
  final Map<String, dynamic> params;

  @override
  State<OtpRequestScreen> createState() => _OtpRequestScreenState();
}

class _OtpRequestScreenState extends State<OtpRequestScreen> {
  final GlobalKey<FormState> otpRequestKey = GlobalKey<FormState>();
  OTPChannels selectedChannel = OTPChannels.EMAIL;
  TextEditingController receiverController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.otpRequestStatus == ServiceStatus.submissionSuccess) {
          Helpers.showSnackBar(
              context,
              const SnackMessage(
                  tone: SnackTone.success, message: "OTP sent successfully!"));
          context.goNamed(AppRoutes.otpVerify, extra: {
            "nextRoute": widget.params[
                "nextRoute"], // Redirect user to home after otp confirmation
            "purpose": widget.params[
                "purpose"], // Verify Users Phone number on registrations
            "receiver": receiverController.text,
            "password": widget.params["password"]
          });
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
            key: otpRequestKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Canva section
                BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    return AuthHeader(
                      title: 'Request OTP',
                      imageUrl: "otp.jpg",
                      isLoading:
                          state.otpRequestStatus == ServiceStatus.submitting ||
                              state.status == ServiceStatus.submitting,
                    );
                  },
                ),
                // End canvas
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kSmall),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: kLarge,
                      ),
                      Text(
                        'Enter your email/phone',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontWeight: FontWeight.w400,
                            fontSize: 17),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: receiverController,
                        decoration: InputDecoration(
                          hintText: "Phone or email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        validator: (value) {
                          if (selectedChannel == OTPChannels.EMAIL) {
                            return emailValidator(value);
                          } else {
                            return phoneNumberValidator(value);
                          }
                        },
                        onChanged: (value) {
                          setState(() {
                            // Regular expression to detect an email address
                            final emailRegex =
                                RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

                            // Determine channel based on input value
                            if (emailRegex.hasMatch(value)) {
                              selectedChannel = OTPChannels.EMAIL;
                            } else {
                              selectedChannel = OTPChannels.SMS;
                            }
                          });
                        },
                      ),
                      const SizedBox(
                        height: kMedium,
                      ),
                      BlocBuilder<AuthBloc, AuthState>(
                        builder: (context, state) {
                          return AuthButton(
                            text: "Request OTP",
                            loading: state.status == ServiceStatus.submitting,
                            onTap: () {
                              if (otpRequestKey.currentState!.validate()) {
                                context.read<AuthBloc>().add(
                                      RequestOtpEvent(
                                          payload: OTPRequestPayload(
                                              channel: selectedChannel,
                                              receiver: receiverController.text,
                                              purpose: widget.params["purpose"],
                                              value: widget.params["value"])),
                                    );
                              } else {
                                Helpers.showSnackBar(
                                    context,
                                    const SnackMessage(
                                        tone: SnackTone.error,
                                        message:
                                            "Enter a valid phone or email address"));
                              }
                            },
                          );
                        },
                      ),
                      const SizedBox(
                        height: kLarge,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: RichText(
                          text: TextSpan(
                            text: 'Back to ',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: Colors.grey,
                                    ),
                            children: [
                              TextSpan(
                                text: 'Login',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    context.goNamed(AppRoutes.login);
                                  },
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
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
