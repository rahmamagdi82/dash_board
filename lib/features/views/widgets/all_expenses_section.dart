import 'package:dash_board/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

import 'custom_background.dart';
import 'custom_dropdown_button.dart';
import 'custom_title.dart';
import 'expenses_items_list_view.dart';

class AllExpensesSection extends StatelessWidget {
  const AllExpensesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomBackground(widget: Column(
      children: [
        Row(
          children: [
            CustomTitle(
              title: 'All Expenses',
            ),
            Spacer(),
            CustomDropdownButton(),
          ],
        ),
        SizedBox(
          height: AppSize.s16,
        ),
        ExpensesItemsListView()
      ],
    ),);
  }
}
