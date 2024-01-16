import 'package:dash_board/core/resources/color_manager.dart';
import 'package:dash_board/core/resources/values_manager.dart';
import 'package:dash_board/features/views/widgets/income_chart_details_item.dart';
import 'package:dash_board/models/income_chart_details_model.dart';
import 'package:flutter/material.dart';

class IncomeChartDetailsListView extends StatelessWidget {
  const IncomeChartDetailsListView({Key? key}) : super(key: key);
  
  static List<IncomeChartDetails> items = [
    IncomeChartDetails(color: ColorManager.blue, title: 'Design service', percent: '40%'),
    IncomeChartDetails(color: ColorManager.secondary, title: 'Design product', percent: '25%'),
    IncomeChartDetails(color: ColorManager.primary, title: 'Product royalti', percent: '20%'),
    IncomeChartDetails(color: ColorManager.gray, title: 'Other', percent: '22%'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context,index)=> IncomeChartDetailsItem(item: items[index]), separatorBuilder: (context,index)=> const SizedBox(height: AppSize.s12,), itemCount: items.length);
  }
}
