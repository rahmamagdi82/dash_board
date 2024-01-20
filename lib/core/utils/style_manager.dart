import 'package:dash_board/core/utils/color_manager.dart';
import 'package:dash_board/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

import 'fonts.gen.dart';
import 'font_manager.dart';

class FontStyles {
// regular style

  static TextStyle getRegularStyle(BuildContext context,{
    double fontSize = FontSize.s16,
    Color? color,
  }) {
    return TextStyle(
      fontFamily: FontFamily.montserrat,
      fontSize: getResponsiveFontSize(context,fontSize: fontSize),
      fontWeight: FontWeightManager.regular,
      color: color ?? ColorManager.primary,
    );
  }

// medium style

  static TextStyle getMediumStyle(BuildContext context,{
    double fontSize = FontSize.s16,
    Color? color,
  }) {
    return TextStyle(
      fontFamily: FontFamily.montserrat,
      fontSize: getResponsiveFontSize(context,fontSize: fontSize),
      fontWeight: FontWeightManager.medium,
      color: color ?? ColorManager.primary,
    );
  }

// bold style

  static TextStyle getBoldStyle(BuildContext context,{
    double fontSize = FontSize.s16,
    Color? color,
  }) {
    return TextStyle(
      fontFamily: FontFamily.montserrat,
      fontSize: getResponsiveFontSize(context,fontSize: fontSize),
      fontWeight: FontWeightManager.bold,
      color: color ?? ColorManager.secondary,
    );
  }

// semiBold style

  static TextStyle getSemiBoldStyle(BuildContext context,{
    double fontSize = FontSize.s16,
    Color? color,
  }) {
    return TextStyle(
      fontFamily: FontFamily.montserrat,
      fontSize: getResponsiveFontSize(context,fontSize: fontSize),
      fontWeight: FontWeightManager.semiBold,
      color: color ?? ColorManager.primary,
    );
  }
}

double getScaleFactor(BuildContext context){
  // var dispatcher = PlatformDispatcher.instance;
  // double physicalSize = dispatcher.views.first.physicalSize.width;
  // double devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalSize/devicePixelRatio;
  double width = MediaQuery.sizeOf(context).width;
  if(width < AppSize.tablet){
    return width/550;
  }
  else if(width < AppSize.deskTop){
    return width/1000;
  }
  else {
    return width/1500;
  }
}

double getResponsiveFontSize(BuildContext context,{required double fontSize}){
  double scaleFactor = getScaleFactor(context);

  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * 0.8;

  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);

}
