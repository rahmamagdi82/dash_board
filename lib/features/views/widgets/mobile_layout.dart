import 'package:dash_board/features/views/widgets/quick_invoice_section.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/values_manager.dart';
import 'all_expenses_section.dart';
import 'cards_and_transaction_history_section.dart';
import 'income_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key, this.isTablet = false,
  });
  final bool isTablet;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          if(isTablet)const SizedBox(height: AppSize.s40,),
          const AllExpensesSection(),
          const SizedBox(height: AppSize.s24,),
          const QuickInvoiceSection(),
          const SizedBox(height: AppSize.s24,),
          const CardsAndTransactionHistorySection(),
          const SizedBox(height: AppSize.s24,),
          const IncomeSection()
        ],
      ),
    );
  }
}