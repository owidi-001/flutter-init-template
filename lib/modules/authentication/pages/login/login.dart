import 'dart:ui';

import 'package:route_mate/core/data/snack_message/snack_message.dart';
import 'package:route_mate/core/utils/constants.dart';
import 'package:route_mate/core/utils/enums.dart';
import 'package:route_mate/core/utils/helpers.dart';
import 'package:route_mate/core/utils/validators.dart';
import 'package:route_mate/core/widgets/app_button.dart';
import 'package:route_mate/core/widgets/app_textfield.dart';
import 'package:route_mate/modules/authentication/domain/dtos/login_dtos/login_data.dart';
import 'package:route_mate/modules/authentication/providers/bloc.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:route_mate/routes/go_route.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // text editing controllers
  final GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool obsecurePass = true;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.status == ServiceStatus.submissionSuccess) {
          context.goNamed(AppRoutes.home);
        }
        if (state.message != null) {
          Helpers.showSnackBar(context, state.message!);
        }
      },
      listenWhen: (previous, current) =>
          previous.message != current.message ||
          previous.status != current.status,
      child: Scaffold(
        body: Stack(
          children: [
            // Background image
            Positioned(
              width: MediaQuery.of(context).size.width * 1.7,
              bottom: 200,
              left: 100,
              child: Image.asset('assets/backgrounds/Spline.png'),
            ),
            // Blur effect
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaX: 5, sigmaY: 5), // Increased blur for better effect
                child: Container(
                  color: Theme.of(context)
                      .colorScheme
                      .surface
                      .withOpacity(.3), // Slight dark overlay
                ),
              ),
            ),
            // Foreground content
            AnimatedPositioned(
              duration: Duration(milliseconds: 240),
              top: 0,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SafeArea(
                child: SingleChildScrollView(
                  // physics: NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: kMedium),
                  child: Form(
                    key: loginKey,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: AppBar().preferredSize.height,
                          ),
                          SizedBox(
                            width: 200,
                            child: Column(children: [
                              Text(
                                "Sign in",
                                style: TextStyle(
                                  fontSize: 60,
                                  fontFamily: "Poppins",
                                  height: 1.2,
                                  color:
                                      Theme.of(context).colorScheme.onSurface,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: kMedium),
                              Text(
                                "Enter your credentials to access your account!",
                                style: TextStyle(
                                  fontSize: kMedium,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSurface
                                      .withOpacity(.7),
                                  height: 1.5,
                                ),
                              ),
                              SizedBox(
                                height: kMedium,
                              ),
                            ]),
                          ),
                          // Form Inputs
                          Text(
                            'Email',
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
                            hint: "johndoe@gmail.com",
                            controller: emailController,
                            action: TextInputAction.next,
                            onChanged: (p0) {
                              setState(() {});
                            },
                            correct:
                                emailValidator(emailController.text) == null,
                            validator: emailValidator,
                          ),
                          const SizedBox(
                            height: 20,
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
                            hint: "Pick a strong password",
                            controller: passwordController,
                            hideText: obsecurePass,
                            validator: passwordValidator,
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

                          // End form
                          SizedBox(
                            height: AppBar().preferredSize.height,
                          ),
                          // Button
                          BlocBuilder<AuthBloc, AuthState>(
                            builder: (context, state) {
                              return AuthButton(
                                text: "Login Account",
                                loading:
                                    state.status == ServiceStatus.submitting,
                                onTap: () {
                                  if (loginKey.currentState!.validate()) {
                                    context.read<AuthBloc>().add(
                                          LoginEvent(
                                            data: LoginData(
                                                email: emailController.text,
                                                password:
                                                    passwordController.text),
                                          ),
                                        );
                                  } else {
                                    Helpers.showSnackBar(
                                        context,
                                        const SnackMessage(
                                            tone: SnackTone.error,
                                            message:
                                                "Fill the form correctly"));
                                  }
                                },
                              );
                            },
                          ),

                          Padding(
                              padding: EdgeInsets.symmetric(vertical: 24.0),
                              child: RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface
                                        .withOpacity(.7),
                                    height: 1.5,
                                  ),
                                  children: [
                                    const TextSpan(
                                      text:
                                          "By signing in, you agree to the route mate ",
                                    ),
                                    TextSpan(
                                      text: "terms of service",
                                      style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        decoration: TextDecoration.underline,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          // Navigate to terms of service page
                                          // Navigate to privacy policy page
                                          context.pushNamed(AppRoutes.webview,
                                              extra: RemoteUrls.WEBSITE_LINK);
                                        },
                                    ),
                                    const TextSpan(
                                      text: " and ",
                                    ),
                                    TextSpan(
                                      text: "privacy policy",
                                      style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        decoration: TextDecoration.underline,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          // Navigate to privacy policy page
                                          context.pushNamed(AppRoutes.webview,
                                              extra: RemoteUrls.WEBSITE_LINK);
                                        },
                                    ),
                                    const TextSpan(
                                      text: ".",
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.start,
                              ))
                        ]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
