import 'package:route_mate/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.onTap,
    required this.hint,
    required this.controller,
    this.correct,
    this.hideText,
    this.showPass,
    this.action,
    this.inputType,
    this.onChanged,
    this.validator,
  });

  final String hint;
  final TextEditingController controller;
  final VoidCallback onTap;

  final VoidCallback? showPass;
  final bool? hideText;
  final bool? correct;
  final TextInputAction? action;
  final TextInputType? inputType;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kSmall),
      ),
      child: TextFormField(
        textInputAction: action ?? TextInputAction.done,
        keyboardType: inputType,
        controller: controller,
        onTap: onTap,
        obscureText: hideText ?? false,
        onChanged: onChanged,
        validator: validator,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onSurface,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Theme.of(context).colorScheme.surface,
          suffixIcon: hideText == null
              ? correct == true
                  ? const TextFieldSuffix(
                      icon: Icons.check_circle, color: Colors.green)
                  : const TextFieldSuffix(icon: Icons.error, color: Colors.red)
              : controller.text.isNotEmpty
                  ? GestureDetector(
                      onTap: showPass,
                      child: hideText!
                          ? TextFieldSuffix(
                              icon: FontAwesomeIcons.eye,
                              size: 13,
                              color: Theme.of(context).colorScheme.primary,
                            )
                          : TextFieldSuffix(
                              icon: FontAwesomeIcons.eyeLowVision,
                              size: 13,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                    )
                  : const SizedBox(),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(kSmall),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
              width: 1.5,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(kSmall),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(kSmall),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 2.0,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: kMedium,
            vertical: kMedium,
          ),
          hintText: hint,
          hintStyle: TextStyle(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(.7),
            fontWeight: FontWeight.normal,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}

class TextFieldSuffix extends StatelessWidget {
  const TextFieldSuffix({
    super.key,
    required this.icon,
    this.color,
    this.size = 18,
  });

  final IconData icon;
  final Color? color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      child: Icon(
        icon,
        color: color ?? Theme.of(context).colorScheme.onSurface,
        size: size,
      ),
    );
  }
}
