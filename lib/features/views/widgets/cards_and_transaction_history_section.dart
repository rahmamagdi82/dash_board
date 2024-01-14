import 'package:dash_board/core/resources/values_manager.dart';
import 'package:dash_board/features/views/widgets/custom_background.dart';
import 'package:dash_board/features/views/widgets/custom_divider.dart';
import 'package:dash_board/features/views/widgets/my_card_section.dart';
import 'package:dash_board/features/views/widgets/transaction_history_section.dart';
import 'package:flutter/material.dart';

class CardsAndTransactionHistorySection extends StatelessWidget {
  const CardsAndTransactionHistorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(widget: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyCardSection(),
        CustomDivider(),
        TransactionHistorySection()
      ],
    ));
  }
}
