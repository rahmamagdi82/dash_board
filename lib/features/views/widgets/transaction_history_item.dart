import 'package:dash_board/models/transaction_history_model.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/font_manager.dart';
import '../../../core/utils/style_manager.dart';
import '../../../core/utils/values_manager.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({Key? key, required this.item}) : super(key: key);
  final TransactionHistory item;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppPadding.p16),
      decoration: ShapeDecoration(
        color: ColorManager.lightGray,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.br12),
        ),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(item.title,style: FontStyles.getSemiBoldStyle(context),),
              const SizedBox(height: AppSize.s8,),
              Text(item.date,style: FontStyles.getRegularStyle(context,color: ColorManager.darkGray),),
            ],
          ),
          const Spacer(),
          Text(
            item.amount,
            style: FontStyles.getSemiBoldStyle(context,fontSize: FontSize.s20,color: item.isWithdrawal?ColorManager.red:ColorManager.green),
          )
        ],
      ),
    );
  }
}
