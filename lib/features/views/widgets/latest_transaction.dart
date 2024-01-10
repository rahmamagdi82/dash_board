import 'package:flutter/material.dart';

import '../../../core/resources/values_manager.dart';
import 'custom_label.dart';
import 'last_transaction_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomLabel(label: 'Latest Transaction',),
        SizedBox(
          height: AppSize.s12,
        ),
        LastTransactionListView(),
      ],
    );
  }
}
