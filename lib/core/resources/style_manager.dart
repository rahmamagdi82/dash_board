import 'package:dash_board/core/resources/color_manager.dart';
import 'package:flutter/material.dart';

import '../utils/fonts.gen.dart';
import 'font_manager.dart';

class FontStyles {
// regular style

  static TextStyle getRegularStyle({
    double fontSize = FontSize.s16,
    Color? color,
  }) {
    return TextStyle(
      fontFamily: FontFamily.montserrat,
      fontSize: fontSize,
      fontWeight: FontWeightManager.regular,
      color: color ?? ColorManager.primary,
    );
  }

// medium style

  static TextStyle getMediumStyle({
    double fontSize = FontSize.s16,
    Color? color,
  }) {
    return TextStyle(
      fontFamily: FontFamily.montserrat,
      fontSize: fontSize,
      fontWeight: FontWeightManager.medium,
      color: color ?? ColorManager.primary,
    );
  }

// bold style

  static TextStyle getBoldStyle({
    double fontSize = FontSize.s16,
    Color? color,
  }) {
    return TextStyle(
      fontFamily: FontFamily.montserrat,
      fontSize: fontSize,
      fontWeight: FontWeightManager.bold,
      color: color ?? ColorManager.secondary,
    );
  }

// semiBold style

  static TextStyle getSemiBoldStyle({
    double fontSize = FontSize.s16,
    Color? color,
  }) {
    return TextStyle(
      fontFamily: FontFamily.montserrat,
      fontSize: fontSize,
      fontWeight: FontWeightManager.semiBold,
      color: color ?? ColorManager.primary,
    );
  }
}
