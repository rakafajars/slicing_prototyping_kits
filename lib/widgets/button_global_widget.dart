import 'package:belajar_slicing_ui/utils/color_styles.dart';
import 'package:flutter/material.dart';

import '../utils/text_styles.dart';

class ButtonGlobalWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String? title;
  const ButtonGlobalWidget({
    super.key,
    this.onPressed,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorStyles.highlightPrimaryDarkest,
        minimumSize: const Size(double.infinity, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title ?? 'Next',
        style: TextStyles.actionActionM,
      ),
    );
  }
}
