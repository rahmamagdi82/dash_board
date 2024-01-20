import 'package:dash_board/core/utils/color_manager.dart';
import 'package:dash_board/core/utils/values_manager.dart';
import 'package:dash_board/features/views/widgets/custom_title.dart';
import 'package:dash_board/features/views/widgets/transaction_history_list_view.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/style_manager.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const CustomTitle(title: 'Transaction History'),
            const Spacer(),
            TextButton(onPressed: (){}, child: Text('See all',style: FontStyles.getMediumStyle(context,color: ColorManager.secondary),))
          ],
        ),
        const SizedBox(height: AppSize.s20,),
        Text('13 April 2022',style: FontStyles.getRegularStyle(context,color: ColorManager.darkGray),),
        const SizedBox(height: AppSize.s16,),
        const TransactionHistoryListView(),
      ],
    );
  }
}
