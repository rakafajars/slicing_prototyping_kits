import 'package:belajar_slicing_ui/utils/color_styles.dart';
import 'package:belajar_slicing_ui/utils/text_styles.dart';
import 'package:flutter/material.dart';

class TextFormFieldGlobalWidget extends StatelessWidget {
  final String title;
  final Widget? suffixIcon;
  final bool obscureText;
  const TextFormFieldGlobalWidget({
    super.key,
    required this.title,
    this.suffixIcon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: title,
        hintStyle: TextStyles.bodyM.copyWith(
          color: ColorStyles.neutralDarkLightest,
        ),
        enabledBorder: _outlineInputBorder(),
        focusedBorder: _outlineInputBorder(),
        suffixIcon: suffixIcon,
      ),
    );
  }

  static OutlineInputBorder _outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: ColorStyles.neutralDarkLightest,
      ),
    );
  }
}
