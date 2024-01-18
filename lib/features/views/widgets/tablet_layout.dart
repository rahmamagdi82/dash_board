import 'package:dash_board/core/resources/values_manager.dart';
import 'package:dash_board/features/views/widgets/custom_drawer.dart';
import 'package:dash_board/features/views/widgets/quick_invoice_section.dart';
import 'package:flutter/material.dart';

import 'all_expenses_section.dart';
import 'cards_and_transaction_history_section.dart';
import 'income_section.dart';
import 'mobile_layout.dart';


class TabletLayout extends StatelessWidget {
  const TabletLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: AppSize.s32,),
        Expanded(flex: 3,child: MobileLayout()),
        SizedBox(width: AppSize.s32,),
      ],
    );
  }
}