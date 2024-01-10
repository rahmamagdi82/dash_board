import 'package:flutter/material.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/values_manager.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppPadding.p24),
      child: Container(
        height: 1,
        color: ColorManager.boarderGray,
      ),
    );
  }
}
