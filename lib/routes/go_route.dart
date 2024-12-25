import 'package:route_mate/core/widgets/web_page.dart';
import 'package:route_mate/main.dart';
import 'package:route_mate/modules/authentication/domain/repository/auth.repo.dart';
import 'package:route_mate/modules/authentication/pages/login/login.dart';
import 'package:route_mate/modules/authentication/pages/otps/otp_request.dart';
import 'package:route_mate/modules/authentication/pages/otps/otp_verify.dart';
import 'package:route_mate/modules/authentication/pages/passwords/otp_password_reset_successful.dart';
import 'package:route_mate/modules/authentication/pages/preferences/preferences.dart';
import 'package:route_mate/modules/dashboard/dashboard.dart';
import 'package:route_mate/modules/dashboard/home/pages/home.dart';
import 'package:route_mate/modules/dashboard/history/pages/history.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:route_mate/modules/dashboard/settings/pages/settings.dart';

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream stream) {
    stream.listen(
      (value) {
        notifyListeners();
      },
    );
  }
}

class AppRoutes {
  // Start
  static const String welcome = 'welcome';

  // auth
  static const String login = 'login';
  static const String signup = 'signup';
  static const String resetSuccess = 'resetSuccess';
  static const String otpRequest = 'otpRequest';
  static const String otpVerify = 'otpVerify';
  static const String preferences = 'preferences';

  // Dashboard
  static const String dashboard = 'dashboard';

  // Main pages
  static const String home = 'home';
  static const String history = 'history';
  static const String settings = 'settings';

  //   Global
  static const String webview = 'webview';
}

final GlobalKey<NavigatorState> rootNavigator = GlobalKey(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigator =
    GlobalKey(debugLabel: 'shell');
final GoRouter router = GoRouter(
  navigatorKey: rootNavigator,
  refreshListenable:
      GoRouterRefreshStream(AuthenticationRepository.instance.statusStream),
  redirect: (context, state) {
    String loc = state.matchedLocation;
    bool isAuthenticated = AuthenticationRepository.instance.status ==
            AuthenticationStatus.authenticated &&
        AuthenticationRepository.instance.user != null;

    // Pages or actions that require authentication
    final List<String> protectedActions = [
      AppRoutes.settings,
      AppRoutes.history,
    ];

    if (!isAuthenticated &&
        protectedActions.any((action) => loc.contains(action))) {
      // If user is not authenticated and tries to access protected actions
      return state
          .namedLocation(AppRoutes.login, queryParameters: {'redirect': loc});
    }

    return null;
  },
  initialLocation: '/welcome',
  routes: <RouteBase>[
    GoRoute(
      name: AppRoutes.welcome,
      path: '/welcome',
      builder: (BuildContext context, GoRouterState state) {
        return const Welcome();
      },
    ),
    GoRoute(
      name: AppRoutes.login,
      path: '/login',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
      name: AppRoutes.otpRequest,
      path: '/otp_request',
      builder: (BuildContext context, GoRouterState state) {
        return OtpRequestScreen(
          params: state.extra as Map<String, dynamic>,
        );
      },
    ),
    GoRoute(
      name: AppRoutes.otpVerify,
      path: '/otp_verify',
      builder: (BuildContext context, GoRouterState state) {
        return OtpVerificationScreen(
          params: state.extra as Map<String, dynamic>,
        );
      },
    ),
    // Crosscut page
    GoRoute(
        name: AppRoutes.preferences,
        path: "/${AppRoutes.preferences}",
        builder: (BuildContext context, GoRouterState state) {
          return WardrobePreferences(nextUrl: state.extra as String);
        }),

    GoRoute(
        name: AppRoutes.resetSuccess,
        path: '/resetSuccess',
        builder: (BuildContext context, GoRouterState state) {
          return const PasswordResetSuccessful();
        }),
    GoRoute(
        name: AppRoutes.webview,
        path: '/web_page',
        builder: (BuildContext context, GoRouterState state) {
          return WebPageWidget(route: state.extra as String);
        }),
    // DASHBOARD ROUTES
    ShellRoute(
        navigatorKey: _shellNavigator,
        builder: (context, state, child) =>
            BaseScreen(key: state.pageKey, child: child),
        routes: [
          GoRoute(
              path: '/',
              name: AppRoutes.home,
              pageBuilder: (context, state) {
                return const NoTransitionPage(
                  child: HomeScreen(),
                );
              },
              routes: const []),
          GoRoute(
              name: AppRoutes.history,
              path: '/history',
              builder: (BuildContext context, GoRouterState state) {
                return const HistoryPage();
              },
              routes: const []),
          GoRoute(
              name: AppRoutes.settings,
              path: '/prroute_paths.dartofile',
              builder: (BuildContext context, GoRouterState state) {
                return const SettingsScreen();
              },
              routes: const []),
        ]),
  ],
);
