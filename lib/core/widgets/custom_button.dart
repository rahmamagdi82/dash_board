import 'package:dash_board/core/resources/font_manager.dart';
import 'package:flutter/material.dart';

import '../resources/style_manager.dart';
import '../resources/values_manager.dart';


class CustomButton extends StatelessWidget{
  const CustomButton({super.key, required this.text, required this.fontColor, required this.backgroundColor, required this.onPressed});
  final String text;
  final Color fontColor;
  final Color backgroundColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s62,
      child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(backgroundColor),
              shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.br12))
              )
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: FontStyles.getSemiBoldStyle(fontSize: FontSize.s18,color: fontColor),
          )),
    );
  }
}