import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:route_mate/core/utils/constants.dart';
import 'package:route_mate/core/widgets/widgets.dart';
import 'package:route_mate/modules/dashboard/home/pages/home.dart';
import 'package:route_mate/modules/dashboard/history/pages/history.dart';
import 'package:route_mate/modules/dashboard/settings/pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:go_router/go_router.dart';
import 'package:route_mate/routes/go_route.dart';

import '../authentication/domain/repository/auth.repo.dart';
import 'dashboard_cubit/nav_cubit/cubit.dart';

class BaseScreen extends StatefulWidget {
  final Widget child;
  const BaseScreen({super.key, required this.child});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return ZoomDrawer(
          controller: zoomDrawerController,
          borderRadius: 24.0,
          showShadow: true,
          angle: 0.0,
          disableDragGesture: false,
          androidCloseOnBackTap: true,
          drawerShadowsBackgroundColor: Colors.grey[300]!,
          slideWidth: MediaQuery.of(context).size.width * 0.65,
          menuBackgroundColor: Theme.of(context).primaryColor,
          menuScreen: const MenuScreen(),
          mainScreen: Scaffold(
            body: [
              const HomeScreen(),
              const HistoryPage(),
              const SettingsScreen()
            ][state.position],
            bottomNavigationBar: BottomNavigationBar(
              // backgroundColor: Colors.transparent,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              selectedFontSize: 14,
              unselectedFontSize: 14,
              onTap: (value) {
                context.read<DashboardCubit>().changeTab(value);
              },
              currentIndex: state.position,

              items: [
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: FaIcon(
                    FontAwesomeIcons.house,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  activeIcon: FaIcon(
                    FontAwesomeIcons.house,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Orders',
                  icon: FaIcon(
                    FontAwesomeIcons.clock,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  activeIcon: FaIcon(
                    FontAwesomeIcons.clock,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Settings',
                  icon: FaIcon(
                    FontAwesomeIcons.user,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  activeIcon: FaIcon(
                    FontAwesomeIcons.user,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    final user = AuthenticationRepository.instance.user;
    final theme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedImage(
              height: 80, width: 80, radius: 80, url: user?.profileImage ?? ""),
          const SizedBox(
            height: kSmall,
          ),
          Text(
            "${user?.name}".capitalize,
            style: theme.titleMedium!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          FittedBox(
            child: Text(
              "${user?.email}",
              style: theme.bodySmall!.copyWith(color: Colors.white),
            ),
          ),
          const Divider(
            color: Colors.white,
          ),
          const SizedBox(
            height: 38,
          ),
          DrawerTiles(
            onTap: () {
              context.read<DashboardCubit>().changeTab(0);
              zoomDrawerController.toggle?.call();
            },
            text: "Home",
            icon: FaIcon(
              FontAwesomeIcons.house,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          DrawerTiles(
            onTap: () {
              context.read<DashboardCubit>().changeTab(1);
              zoomDrawerController.toggle?.call();
            },
            text: "History",
            icon: FaIcon(
              FontAwesomeIcons.house,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          DrawerTiles(
            onTap: () {
              context.read<DashboardCubit>().changeTab(2);
              zoomDrawerController.toggle?.call();
            },
            text: "Settings",
            icon: FaIcon(
              FontAwesomeIcons.user,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          const Spacer(),
          DrawerTiles(
            onTap: () async {
              zoomDrawerController.toggle?.call();

              final bool confirmLogout = await showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const LogoutDialog();
                },
              );

              if (confirmLogout) {
                AuthenticationRepository.instance.logout();
                context.goNamed(AppRoutes.login);
              }
            },
            text: "Sign Out",
            icon: FaIcon(
              FontAwesomeIcons.rightToBracket,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          )
        ],
      ),
    );
  }
}

class DrawerTiles extends StatelessWidget {
  final Widget icon;
  final VoidCallback onTap;
  final String text;
  const DrawerTiles(
      {super.key, required this.icon, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 29.0),
        child: Row(
          children: [
            icon,
            const SizedBox(
              width: kSmall,
            ),
            Text(
              text,
              style: theme.titleMedium!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      title: const Text('Logout Confirmation'),
      content: const Text('Are you sure you want to logout?'),
      actions: <Widget>[
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop(false); // Return false if canceled
          },
        ),
        TextButton(
          child: Text(
            'Logout',
            style: TextStyle(color: Theme.of(context).colorScheme.error),
          ),
          onPressed: () {
            Navigator.of(context).pop(true); // Return true if confirmed
          },
        ),
      ],
    );
  }
}
