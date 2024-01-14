import 'package:flutter/material.dart';

import '../../../core/resources/values_manager.dart';
import 'custom_label.dart';

class CustomTitleTextField extends StatelessWidget {
  const CustomTitleTextField({Key? key, required this.title, required this.childWidget}) : super(key: key);
  final String title;
  final Widget childWidget;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomLabel(label: title),
        const SizedBox(height: AppSize.s12,),
        childWidget,
      ],
    );
  }
}
