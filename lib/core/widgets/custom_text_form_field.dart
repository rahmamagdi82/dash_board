import 'package:dash_board/core/resources/color_manager.dart';
import 'package:flutter/material.dart';

import '../resources/style_manager.dart';
import '../resources/values_manager.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({super.key, required this.hintText, required this.keyboardType, this.isObscureText});

  final String hintText;
  final TextInputType keyboardType;
  final bool? isObscureText;


  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isShowPassword = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: FontStyles.getRegularStyle(color: ColorManager.darkGray),
          contentPadding: const EdgeInsets.all(AppPadding.p20),
          enabledBorder: customInputBorder(borderColor: ColorManager.lightGray),
          focusedBorder: customInputBorder(borderColor: ColorManager.primary),
          focusedErrorBorder:customInputBorder(borderColor: ColorManager.red),
          errorBorder: customInputBorder(borderColor: ColorManager.red),
          filled: true,
          fillColor: ColorManager.lightGray
      ),
    );
  }

  InputBorder customInputBorder({required Color borderColor}){
    return OutlineInputBorder(borderRadius: BorderRadius.circular(AppSize.br12),borderSide: BorderSide(color: borderColor));
  }
}