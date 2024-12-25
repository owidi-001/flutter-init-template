import 'package:route_mate/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:route_mate/routes/go_route.dart';

class LoginRequiredPrompt extends StatelessWidget {
  const LoginRequiredPrompt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kMedium),
      margin:
          const EdgeInsets.only(bottom: kMedium, left: kMedium, right: kMedium),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(kSmall)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Action Call",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.error),
          ),
          const SizedBox(height: kMedium),
          Text(
            "To perform this action, you need to be authenticated!",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: kMedium),
          ElevatedButton(
            onPressed: () {
              // Navigate to the login screen
              context.goNamed(AppRoutes.login, extra: AppRoutes.home);
            },
            child: const Text("Go To Log In"),
          ),
          SizedBox(
            height: AppBar().preferredSize.height / 2,
          )
        ],
      ),
    );
  }
}
