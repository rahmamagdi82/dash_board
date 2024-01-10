import 'package:dash_board/core/resources/values_manager.dart';
import 'package:dash_board/features/views/widgets/title_widget.dart';
import 'package:flutter/material.dart';

import 'custom_background_widget.dart';
import 'custom_dropdown_button.dart';
import 'expenses_items_list_view.dart';

class AllExpensesWidget extends StatelessWidget {
  const AllExpensesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(widget: Column(
      children: [
        Row(
          children: [
            TitleWidget(
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
