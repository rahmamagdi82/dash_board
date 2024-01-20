import 'package:dash_board/models/expense_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/font_manager.dart';
import '../../../core/utils/style_manager.dart';
import '../../../core/utils/values_manager.dart';

class UnselectedExpensesItem extends StatelessWidget {
  const UnselectedExpensesItem({Key? key, required this.item,}) : super(key: key);
  final ExpenseItem item;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: AppPadding.p16,horizontal: AppPadding.p20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.br12),
        border: Border.all(color: ColorManager.boarderGray),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Flexible(
                child: CircleAvatar(
                  radius: AppSize.s30,
                  backgroundColor: ColorManager.lightGray,
                  child: Center(child: SvgPicture.asset(item.image,)),
                ),
              ),
              const Spacer(),
              const Icon(Icons.arrow_forward_ios,size: AppSize.s16,)
            ],
          ),
          const SizedBox(
            height: AppSize.s34,
          ),
          FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(item.title,style: FontStyles.getSemiBoldStyle(context),)),
          const SizedBox(
            height: AppSize.s8,
          ),
          FittedBox(fit: BoxFit.scaleDown,child: Text('April 2022',style: FontStyles.getSemiBoldStyle(context,color: ColorManager.darkGray),)),
          const SizedBox(
            height: AppSize.s16,
          ),
          FittedBox(fit: BoxFit.scaleDown,child: Text(r'$20,129',style: FontStyles.getSemiBoldStyle(context,fontSize: FontSize.s24,color: ColorManager.secondary),)),
        ],
      ),
    );
  }
}
