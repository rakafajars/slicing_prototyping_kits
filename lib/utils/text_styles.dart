import 'package:belajar_slicing_ui/utils/color_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  TextStyles._();

  static TextStyle h1 = GoogleFonts.inter(
    fontWeight: FontWeight.bold,
    fontSize: 24,
    color: ColorStyles.black,
    letterSpacing: 1,
  );

  static TextStyle h2 = GoogleFonts.inter(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: ColorStyles.black,
    letterSpacing: 1,
  );

  static TextStyle h3 = GoogleFonts.inter(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: ColorStyles.black,
    letterSpacing: 1,
  );

  static TextStyle h4 = GoogleFonts.inter(
    fontWeight: FontWeight.bold,
    fontSize: 14,
    color: ColorStyles.black,
    letterSpacing: 1,
  );

  static TextStyle h5 = GoogleFonts.inter(
    fontWeight: FontWeight.bold,
    fontSize: 12,
    color: ColorStyles.black,
    letterSpacing: 1,
  );

  static TextStyle bodyXL = GoogleFonts.inter(
    fontWeight: FontWeight.normal,
    fontSize: 18,
    color: ColorStyles.black,
  );

  static TextStyle bodyL = GoogleFonts.inter(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: ColorStyles.black,
  );

  static TextStyle bodyM = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: ColorStyles.black,
    letterSpacing: 1,
  );

  static TextStyle bodyS = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: ColorStyles.black,
    letterSpacing: 1,
  );

  static TextStyle actionActionM = GoogleFonts.inter(
    fontWeight: FontWeight.w600,
    fontSize: 12,
    color: ColorStyles.neutralLightGreyLightLightest,
  );
}
