import 'package:dash_board/core/utils/color_manager.dart';
import 'package:dash_board/core/utils/values_manager.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatelessWidget {
  const IncomeChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1,
        child: PieChart(
            PieChartData(
                sectionsSpace: 0,
                sections: [
              PieChartSectionData(value: 22,color: ColorManager.gray,showTitle: false,radius: AppSize.s30),
              PieChartSectionData(value: 20,color: ColorManager.primary,showTitle: false,radius: AppSize.s30),
              PieChartSectionData(value: 25,color: ColorManager.secondary,showTitle: false,radius: AppSize.s30),
              PieChartSectionData(value: 40,color: ColorManager.blue,showTitle: false,radius: AppSize.s30),
        ])));
  }
}
