import 'package:dash_board/core/resources/values_manager.dart';
import 'package:flutter/material.dart';

import 'cards_and_transaction_history_section.dart';
import 'income_section.dart';

class LastDesktopWidget extends StatelessWidget {
  const LastDesktopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CardsAndTransactionHistorySection(),
        SizedBox(height: AppSize.s24,),
        IncomeSection()
      ],
    );
  }
}
