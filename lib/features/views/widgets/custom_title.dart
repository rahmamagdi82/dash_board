import 'package:flutter/material.dart';

import '../../../core/utils/font_manager.dart';
import '../../../core/utils/style_manager.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,style: FontStyles.getSemiBoldStyle(context,fontSize: FontSize.s20),);
  }
}
