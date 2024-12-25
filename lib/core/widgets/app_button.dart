import 'package:flutter/material.dart';
import 'package:route_mate/core/utils/constants.dart';
import 'package:route_mate/core/widgets/widgets.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final bool loading;
  final VoidCallback onTap;
  final String? tag;
  const AuthButton(
      {super.key,
      required this.text,
      required this.loading,
      required this.onTap,
      this.tag});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag ?? "TAG",
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 65,
          width: double.infinity,
          alignment: Alignment.center,
          // margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kSmall),
              // gradient: LinearGradient(colors: [
              //   Theme.of(context).colorScheme.secondary,
              //   Theme.of(context).colorScheme.tertiary,
              // ]),
              color: Theme.of(context).colorScheme.primary),
          child: loading
              ? const SizedBox(
                  height: 15,
                  width: 15,
                  child: SpinnerWidget(
                    size: kMedium,
                  ),
                )
              : Material(
                  color: Colors.transparent,
                  child: Text(
                    text,
                    style:  TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
        ),
      ),
    );
  }
}
