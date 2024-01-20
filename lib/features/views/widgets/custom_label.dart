import 'package:flutter/material.dart';

import '../../../core/utils/style_manager.dart';

class CustomLabel extends StatelessWidget {
  const CustomLabel({Key? key, required this.label}) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(label, style: FontStyles.getMediumStyle(context));
  }
}
