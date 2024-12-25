import 'dart:ui';

import 'package:route_mate/core/utils/constants.dart';
import 'package:route_mate/core/widgets/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:route_mate/core/widgets/widgets.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({
    super.key,
    required this.imageUrl,
    required this.isLoading,
    required this.title,
  });
  final String imageUrl;
  final bool isLoading;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .3,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        image: DecorationImage(
            image: AssetImage("assets/auth/$imageUrl"), fit: BoxFit.cover),
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(kXXXLarge),
            bottomRight: Radius.circular(kXXXLarge)),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(kXXXLarge),
                  bottomRight: Radius.circular(kXXXLarge)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
              ),
            ),
          ),
          Padding(
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
                      title,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                    ),
                  ],
                ),
                isLoading
                    ? const SizedBox(
                        height: 24,
                        width: 24,
                        child: SpinnerWidget(
                          size: kMedium,
                        ),
                      )
                    : const SizedBox.shrink()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
