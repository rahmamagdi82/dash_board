import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/style_manager.dart';
import '../../../core/utils/values_manager.dart';

class ItemNameDropdown extends StatelessWidget {
  const ItemNameDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s55,
      padding:
      const EdgeInsets.symmetric(horizontal: AppPadding.p20),
      decoration: BoxDecoration(
        color: ColorManager.lightGray,
        borderRadius: BorderRadius.circular(AppSize.br12),
      ),
      child: Row(
        children: [
          Text(
            'USD',
            style: FontStyles.getRegularStyle(context,
                color: ColorManager.darkGray),
          ),
          const Icon(
            Icons.keyboard_arrow_down,
            size: AppSize.s30,
          )
        ],
      ),
    );
  }
}
