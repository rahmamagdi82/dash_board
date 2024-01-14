import 'package:flutter/material.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/style_manager.dart';
import '../../../core/resources/values_manager.dart';

class ItemNameWidget extends StatelessWidget {
  const ItemNameWidget({Key? key}) : super(key: key);

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
            style: FontStyles.getRegularStyle(
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
