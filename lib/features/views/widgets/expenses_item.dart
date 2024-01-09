import 'package:dash_board/features/views/widgets/selected_expenses_item.dart';
import 'package:dash_board/features/views/widgets/unselected_expenses_item.dart';
import 'package:flutter/material.dart';

import '../../../models/expense_item_model.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({Key? key, required this.isSelected, required this.item}) : super(key: key);
  final bool isSelected;
  final ExpenseItem item;

  @override
  Widget build(BuildContext context) {
    return isSelected? SelectedExpensesItem(item: item) : UnselectedExpensesItem(item: item,);
  }
}
