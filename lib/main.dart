import 'dart:ui';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import 'package:route_mate/core/data/local/local.dart';
import 'package:route_mate/core/data/services/service.dart';
import 'package:route_mate/core/providers/internet_providers/internet_bloc.dart';
import 'package:route_mate/core/utils/constants.dart';
import 'package:route_mate/core/widgets/app_button.dart';
import 'package:route_mate/modules/authentication/domain/repository/auth.repo.dart';
import 'package:route_mate/modules/authentication/providers/bloc.dart';
import 'package:route_mate/modules/dashboard/dashboard_cubit/theme/bloc.dart';
import 'package:route_mate/modules/dashboard/notifications/providers/bloc.dart';
import 'package:route_mate/modules/dashboard/settings/components/password/providers/bloc.dart';
import 'package:route_mate/routes/go_route.dart';
import 'package:route_mate/theme/theme.dart';

void main() {
  // Native splash config
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Set up all services
  setUpService();

  // Start app
  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
            create: (context) => AuthenticationRepository.instance),

        // RepositoryProvider(create: (context) => RealTimeMessaging.instance),
      ],
      child: const RouteMate(),
    ),
  );
}

class RouteMate extends StatelessWidget {
  const RouteMate({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final Connectivity connectivity = Connectivity();

    final internetStream = ConnectivityBloc(connectivity);

    return MultiBlocProvider(
      providers: [
        // Bloc providers go here
        BlocProvider(
          create: (context) => ThemeBloc()
            ..add(
              LoadTheme(),
            ),
        ),
        // Utils
        BlocProvider(create: (context) => internetStream),
        // Auth
        BlocProvider(
            create: (context) =>
                AuthBloc(internetStream, AuthenticationRepository.instance)),
        // Notifications
        BlocProvider(
          create: (context) => NotificationsBloc(internetStream),
        ),
        BlocProvider(
          create: (context) => PasswordBloc(internetStream),
        ),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routeInformationParser: router.routeInformationParser,
            routeInformationProvider: router.routeInformationProvider,
            routerDelegate: router.routerDelegate,
            title: 'Route Mate',
            theme: AppTheme.light,
            darkTheme: AppTheme.dark,
            themeMode: state.mode,
          );
        },
      ),
    );
  }
}

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  void initState() {
    super.initState();

    // Delay the async operation until after the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Remove splash screen after routing decision
      FlutterNativeSplash.remove();
    });
  }

  Future<void> _checkInitialRoute() async {
    if (mounted) {
      // Check for authentication token
      final token = await LocalDataHandler.loadToken();

      if (token != null) {
        // Authenticate user and go to home
        AuthenticationRepository.instance.login(token);
        context.goNamed(AppRoutes.home);
      } else {
        // No token found; handle as unauthenticated
        context.goNamed(AppRoutes.login);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            duration: const Duration(milliseconds: 240),
            top: 0,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kMedium),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    // Title and subtitle
                    SizedBox(
                      width: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Delivery with \nIntegrity",
                            style: TextStyle(
                              fontSize: 60,
                              fontFamily: "Poppins",
                              height: 1.2,
                              color: Theme.of(context).colorScheme.onSurface,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            "Get real-time routes, manage orders, and deliver on time. Join our delivery team and start earning today!",
                            style: TextStyle(
                              fontSize: 16,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurface
                                  .withOpacity(.7),
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(flex: 2),
                    // Action Button
                    BlocBuilder<AuthBloc, AuthState>(
                      builder: (context, state) {
                        return AuthButton(
                          text: "Start Now",
                          loading: false,
                          onTap: () {
                            _checkInitialRoute(); // Ensure this function is defined
                          },
                        );
                      },
                    ),
                    // Footer text
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 24.0),
                      child: Text(
                        "Sign up now to access delivery tools, optimize your routes, and grow your delivery business.",
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context)
                              .colorScheme
                              .onSurface
                              .withOpacity(.7),
                          height: 1.5,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
