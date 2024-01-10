import 'package:dash_board/core/resources/values_manager.dart';
import 'package:dash_board/features/views/widgets/quick_invoice_widget.dart';
import 'package:flutter/material.dart';

import 'all_expenses_widget.dart';

class MiddleDesktopWidget extends StatelessWidget {
  const MiddleDesktopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: AppSize.s40,),
        AllExpensesWidget(),
        SizedBox(height: AppSize.s24,),
        QuickInvoiceWidget(),
        SizedBox(height: AppSize.s32,),
      ],
    );
  }
}
