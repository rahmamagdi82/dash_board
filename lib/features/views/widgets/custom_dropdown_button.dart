import 'package:flutter/material.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/style_manager.dart';
import '../../../core/resources/values_manager.dart';

class CustomDropdownButton extends StatelessWidget {
  const CustomDropdownButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s48,
      padding: const EdgeInsets.all(AppPadding.p12),
      decoration: BoxDecoration(
        color: ColorManager.white,
        border: Border.all(color: ColorManager.boarderGray),
        borderRadius: BorderRadius.circular(AppSize.br12),
      ),
      child: DropdownButton(
        items: [
          DropdownMenuItem<String>(
            value: 'Monthly',
            child: Text(
              'Monthly',
              style: FontStyles.getMediumStyle(),
            ),
          )
        ],
        onChanged: (value) {},
        value: 'Monthly',
        style: FontStyles.getMediumStyle(),
        dropdownColor:ColorManager.white,
        elevation: 0,
        icon: const Icon(Icons.keyboard_arrow_down),
        underline: const DropdownButtonHideUnderline(child: SizedBox(),),
      ),
    );
  }
}
