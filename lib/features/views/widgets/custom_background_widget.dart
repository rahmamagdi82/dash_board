import 'package:flutter/material.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/values_manager.dart';

class CustomBackgroundWidget extends StatelessWidget {
  const CustomBackgroundWidget({Key? key, required this.widget}) : super(key: key);
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppPadding.p20),
      decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(AppSize.br12)),
      child: widget,
    );
  }
}
