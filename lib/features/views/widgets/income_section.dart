import 'package:dash_board/core/resources/values_manager.dart';
import 'package:dash_board/features/views/widgets/custom_background.dart';
import 'package:dash_board/features/views/widgets/custom_dropdown_button.dart';
import 'package:dash_board/features/views/widgets/custom_title.dart';
import 'package:dash_board/features/views/widgets/income_chart.dart';
import 'package:flutter/material.dart';

import 'income_chart_details_list_view.dart';


class IncomeSection extends StatelessWidget {
  const IncomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const CustomBackground(
        widget: Column(
      children: [
        Row(
          children: [
            CustomTitle(title: 'Income'),
            Spacer(),
            CustomDropdownButton(),
          ],
        ),
        SizedBox(height: AppSize.s16,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: IncomeChart()),
            Spacer(),
            Expanded(
              flex: 2,
                child: IncomeChartDetailsListView())
          ],
        ),

        

      ],
    ));
  }
}
