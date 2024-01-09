import 'package:dash_board/models/expense_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';
import '../../../core/resources/style_manager.dart';
import '../../../core/resources/values_manager.dart';
class SelectedExpensesItem extends StatelessWidget {
  const SelectedExpensesItem({Key? key, required this.item}) : super(key: key);

  final ExpenseItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: AppPadding.p16,horizontal: AppPadding.p20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.br12),
        color: ColorManager.secondary,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: AppSize.s30,
                backgroundColor: Colors.white.withOpacity(0.10000000149011612),
                child: Padding(
                  padding: const EdgeInsets.all(AppPadding.p12),
                  child: SvgPicture.asset(color: ColorManager.white,item.image,),
                ),
              ),
              const Spacer(),
              Icon(Icons.arrow_forward_ios,color: ColorManager.white,)
            ],
          ),
          const SizedBox(
            height: AppSize.s34,
          ),
          Text(item.title,style: FontStyles.getSemiBoldStyle(color: ColorManager.white),),
          const SizedBox(
            height: AppSize.s8,
          ),
          Text('April 2022',style: FontStyles.getRegularStyle(fontSize: FontSize.s14,color: ColorManager.lightGray),),
          const SizedBox(
            height: AppSize.s16,
          ),
          Text(r'$20,129',style: FontStyles.getSemiBoldStyle(fontSize: FontSize.s24,color: ColorManager.white),),
        ],
      ),
    );
  }
}
