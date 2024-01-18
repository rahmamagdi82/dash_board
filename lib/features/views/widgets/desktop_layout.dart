import 'package:dash_board/core/resources/values_manager.dart';
import 'package:dash_board/features/views/widgets/custom_drawer.dart';
import 'package:dash_board/features/views/widgets/quick_invoice_section.dart';
import 'package:flutter/material.dart';

import 'all_expenses_section.dart';
import 'cards_and_transaction_history_section.dart';
import 'income_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: AppSize.s32,),
        Expanded(flex:3,child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: AppSize.s40,),
              AllExpensesSection(),
              SizedBox(height: AppSize.s24,),
              QuickInvoiceSection(),
              SizedBox(height: AppSize.s32,),
            ],
          ),
        )),
        SizedBox(width: AppSize.s24,),
        Expanded(flex:2,child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: AppSize.s40,),
              CardsAndTransactionHistorySection(),
              SizedBox(height: AppSize.s24,),
              IncomeSection(),
            ],
          ),
        )),
        SizedBox(width: AppSize.s32,),
      ],
    );
  }
}
