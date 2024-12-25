import 'package:route_mate/core/utils/constants.dart';
import 'package:route_mate/core/widgets/image_shimmer.dart';
import 'package:route_mate/core/widgets/login_prompt.dart';
import 'package:route_mate/modules/authentication/domain/repository/auth.repo.dart';
import 'package:route_mate/modules/dashboard/dashboard_cubit/theme/bloc.dart';
import 'package:route_mate/modules/dashboard/settings/components/password/pages/password_change.dart';
import 'package:route_mate/modules/dashboard/settings/components/profile/pages/profile_edit.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:route_mate/routes/go_route.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen>
    with TickerProviderStateMixin {
  late AnimationController controller;
  bool determinate = false;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final user = AuthenticationRepository.instance.user;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(kXXLarge),
                    bottomRight: Radius.circular(kXXLarge))),
            expandedHeight: 120 + AppBar().preferredSize.height,
            centerTitle: false,
            pinned: true,
            backgroundColor: Theme.of(context).colorScheme.primary,
            title: Text(
              "Settings",
              style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
            ),
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
                background: ListView(
              children: [
                SizedBox(
                  height: AppBar().preferredSize.height,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kSmall, vertical: kMedium),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CachedImage(
                        url: user?.profileImage ??
                            "https://img.freepik.com/free-psd/3d-render-avatar-character_23-2150611704.jpg?t=st=1729946429~exp=1729950029~hmac=b1d70e082c8fd023371573f2492708920cf23f7992995dafaf9ed7eaf8b6e303&w=1380",
                        height: 80,
                        width: 80,
                        radius: 80,
                      ),
                      const SizedBox(
                        width: kMedium,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${user?.name}".capitalize,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  )),
                          const SizedBox(
                            height: kSmall,
                          ),
                          Text(
                            "${user?.email}",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
                          )
                        ],
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          if (AuthenticationRepository.instance.status ==
                              AuthenticationStatus.authenticated) {
                            showCupertinoModalPopup(
                              context: context,
                              builder: (context) => const ProfileEditPage(),
                            );
                          } else {
                            showCupertinoModalPopup(
                              context: context,
                              builder: (context) => const LoginRequiredPrompt(),
                            );
                          }
                        },
                        child: CircleAvatar(
                            maxRadius: kMedium + kXSmall,
                            child: FaIcon(FontAwesomeIcons.penToSquare)),
                      )
                    ],
                  ),
                ),
              ],
            )),
          ),
          SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      _SingleSection(
                        title: "Profile Settings",
                        children: [
                          _CustomListTile(
                            title: "Password",
                            icon: Icons.key,
                            onTap: () {
                              if (AuthenticationRepository.instance.status ==
                                  AuthenticationStatus.authenticated) {
                                //  Change Password Dialog
                                showModalBottomSheet(
                                  useRootNavigator: true,
                                  useSafeArea: true,
                                  isScrollControlled: true,
                                  enableDrag: true,
                                  showDragHandle: true,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                          bottom: MediaQuery.of(context)
                                              .viewInsets
                                              .bottom),
                                      child: const PasswordChangeForm(),
                                    );
                                  },
                                );
                              } else {
                                showCupertinoModalPopup(
                                  context: context,
                                  builder: (context) =>
                                      const LoginRequiredPrompt(),
                                );
                              }
                            },
                          ),
                        ],
                      ),
                      const Divider(),
                      _SingleSection(
                        title: "General",
                        children: [
                          BlocBuilder<ThemeBloc, ThemeState>(
                            builder: (context, state) {
                              return _CustomListTile(
                                title: "Dark Theme",
                                icon: Icons.color_lens,
                                onTap: () async {
                                  //
                                },
                                trailing: Switch(
                                    value: state.mode == ThemeMode.dark ||
                                        state.mode == ThemeMode.system &&
                                            Theme.of(context).brightness ==
                                                Brightness.dark,
                                    onChanged: (value) {
                                      if (value) {
                                        context.read<ThemeBloc>().add(
                                              ChangeTheme(ThemeMode.dark),
                                            );
                                      } else if (!value) {
                                        context.read<ThemeBloc>().add(
                                              ChangeTheme(ThemeMode.light),
                                            );
                                      } else {
                                        context.read<ThemeBloc>().add(
                                              ChangeTheme(ThemeMode.system),
                                            );
                                      }
                                    }),
                              );
                            },
                          ),
                          _CustomListTile(
                            title: AuthenticationRepository.instance.status ==
                                    AuthenticationStatus.authenticated
                                ? "Sign out"
                                : "Sign In",
                            icon: Icons.exit_to_app_rounded,
                            onTap: () {
                              if (AuthenticationRepository.instance.status ==
                                  AuthenticationStatus.authenticated) {
                                showCupertinoModalPopup(
                                  context: context,
                                  builder: (context) => Container(
                                    width: MediaQuery.sizeOf(context).width,
                                    padding: const EdgeInsets.all(kMedium),
                                    margin: const EdgeInsets.only(
                                        bottom: kMedium,
                                        left: kMedium,
                                        right: kMedium),
                                    decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .surface,
                                        borderRadius:
                                            BorderRadius.circular(kSmall)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Action call",
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .error),
                                        ),
                                        const SizedBox(height: kMedium),
                                        Text(
                                          "You are about to be logged out!",
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        ),
                                        const SizedBox(height: kMedium),
                                        ElevatedButton(
                                          onPressed: () {
                                            context.goNamed(
                                              AppRoutes.login,
                                            );
                                          },
                                          child: const Text("Logout"),
                                        ),
                                        SizedBox(
                                          height:
                                              AppBar().preferredSize.height / 2,
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              } else {
                                context.goNamed(
                                  AppRoutes.login,
                                );
                              }
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}

class _CustomListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget? trailing;
  final Function()? onTap;
  const _CustomListTile(
      {required this.title, required this.icon, this.onTap, this.trailing});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Icon(icon),
      trailing: trailing,
      onTap: onTap,
    );
  }
}

class _SingleSection extends StatelessWidget {
  final String? title;
  final List<Widget> children;
  const _SingleSection({
    this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title!,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        Column(
          children: children,
        ),
      ],
    );
  }
}
