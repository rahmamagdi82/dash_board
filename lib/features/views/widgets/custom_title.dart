import 'package:flutter/material.dart';

import '../../../core/resources/font_manager.dart';
import '../../../core/resources/style_manager.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,style: FontStyles.getSemiBoldStyle(fontSize: FontSize.s20),);
  }
}
