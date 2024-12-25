import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key, this.size = 50});
  final double size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/logo.png",
      height: size,
      width: size,
    );
  }
}
