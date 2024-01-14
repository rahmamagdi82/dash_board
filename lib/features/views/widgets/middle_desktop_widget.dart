import 'package:dash_board/core/resources/values_manager.dart';
import 'package:dash_board/features/views/widgets/all_expenses_section.dart';
import 'package:dash_board/features/views/widgets/quick_invoice_section.dart';
import 'package:flutter/material.dart';


class MiddleDesktopWidget extends StatelessWidget {
  const MiddleDesktopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: AppSize.s40,)),
        SliverToBoxAdapter(child: AllExpensesSection()),
        SliverToBoxAdapter(child: SizedBox(height: AppSize.s24,)),
        SliverToBoxAdapter(child: QuickInvoiceSection()),
        SliverToBoxAdapter(child: SizedBox(height: AppSize.s32,)),
      ],
    );
  }
}
