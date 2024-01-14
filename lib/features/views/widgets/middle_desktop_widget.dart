import 'package:dash_board/core/resources/values_manager.dart';
import 'package:dash_board/features/views/widgets/quick_invoice_widget.dart';
import 'package:flutter/material.dart';

import 'all_expenses_widget.dart';

class MiddleDesktopWidget extends StatelessWidget {
  const MiddleDesktopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: AppSize.s40,)),
        SliverToBoxAdapter(child: AllExpensesWidget()),
        SliverToBoxAdapter(child: SizedBox(height: AppSize.s24,)),
        SliverToBoxAdapter(child: QuickInvoiceWidget()),
        SliverToBoxAdapter(child: SizedBox(height: AppSize.s32,)),
      ],
    );
  }
}
