import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/style_manager.dart';
import '../../../core/utils/values_manager.dart';

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
              style: FontStyles.getMediumStyle(context),
            ),
          )
        ],
        onChanged: (value) {},
        value: 'Monthly',
        style: FontStyles.getMediumStyle(context),
        dropdownColor:ColorManager.white,
        elevation: 0,
        icon: const Icon(Icons.keyboard_arrow_down),
        underline: const DropdownButtonHideUnderline(child: SizedBox(),),
      ),
    );
  }
}
