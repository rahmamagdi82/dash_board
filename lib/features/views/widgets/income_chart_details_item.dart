import 'package:dash_board/core/utils/style_manager.dart';
import 'package:dash_board/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

import '../../../models/income_chart_details_model.dart';

class IncomeChartDetailsItem extends StatelessWidget {
  const IncomeChartDetailsItem({Key? key, required this.item}) : super(key: key);
  final IncomeChartDetails item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: AppSize.s12,
          height: AppSize.s12,
          decoration: ShapeDecoration(
            color: item.color,
            shape: const OvalBorder(),
          ),
        ),
        const SizedBox(width: AppSize.s12,),
        Text(
          item.title,
          style: FontStyles.getRegularStyle(context),
        ),
        const Spacer(),
        Text(
          item.percent,
          style: FontStyles.getMediumStyle(context)
        )
      ],
    );
  }
}
