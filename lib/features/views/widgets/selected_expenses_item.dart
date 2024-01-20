import 'package:dash_board/models/expense_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/font_manager.dart';
import '../../../core/utils/style_manager.dart';
import '../../../core/utils/values_manager.dart';

class SelectedExpensesItem extends StatelessWidget {
  const SelectedExpensesItem({Key? key, required this.item}) : super(key: key);

  final ExpenseItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: AppPadding.p16, horizontal: AppPadding.p20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.br12),
        border: Border.all(color: ColorManager.secondary),
        color: ColorManager.secondary,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Flexible(
                child: CircleAvatar(
                  radius: AppSize.s30,
                  backgroundColor:
                      Colors.white.withOpacity(0.10000000149011612),
                  child: Center(
                      child: SvgPicture.asset(
                    colorFilter:
                        ColorFilter.mode(ColorManager.white, BlendMode.srcIn),
                    item.image,
                  )),
                ),
              ),
              const Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                color: ColorManager.white,
              )
            ],
          ),
          const SizedBox(
            height: AppSize.s34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              item.title,
              style:
                  FontStyles.getSemiBoldStyle(context, color: ColorManager.white),
            ),
          ),
          const SizedBox(
            height: AppSize.s8,
          ),
          FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'April 2022',
                style: FontStyles.getRegularStyle(context,
                    fontSize: FontSize.s14, color: ColorManager.lightGray),
              )),
          const SizedBox(
            height: AppSize.s16,
          ),
          FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                r'$20,129',
                style: FontStyles.getSemiBoldStyle(context,
                    fontSize: FontSize.s24, color: ColorManager.white),
              )),
        ],
      ),
    );
  }
}
