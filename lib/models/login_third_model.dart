import 'package:belajar_slicing_ui/gen/assets.gen.dart';
import 'package:belajar_slicing_ui/utils/color_styles.dart';
import 'package:flutter/material.dart';

class LoginThirdModel {
  final String iconPath;
  final Color color;

  LoginThirdModel({
    required this.iconPath,
    required this.color,
  });
}

final loginThirds = <LoginThirdModel>[
  LoginThirdModel(
    iconPath: Assets.icons.google.path,
    color: ColorStyles.supportErrorDark,
  ),
  LoginThirdModel(
    iconPath: Assets.icons.apple.path,
    color: ColorStyles.neutralDarkDarkest,
  ),
  LoginThirdModel(
    iconPath: Assets.icons.facebook.path,
    color: ColorStyles.highlightPrimaryDarkest,
  ),
];
