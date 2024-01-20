import 'package:dash_board/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/assets.gen.dart';
import '../../../models/expense_item_model.dart';
import 'expenses_item.dart';

class ExpensesItemsListView extends StatefulWidget {
  const ExpensesItemsListView({Key? key}) : super(key: key);

  @override
  State<ExpensesItemsListView> createState() => _ExpensesItemsListViewState();
}

class _ExpensesItemsListViewState extends State<ExpensesItemsListView> {
  int currentIndex = 0;
  final List<ExpenseItem> items = [
    ExpenseItem(image: Assets.images.balance, title: 'Balance'),
    ExpenseItem(image: Assets.images.income, title: 'Income'),
    ExpenseItem(image: Assets.images.expenses, title: 'Expenses')
  ];
  @override
  Widget build(BuildContext context) {

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Expanded(
        child: InkWell(
            onTap: () {
              if (currentIndex != 0) {
                setState(() {
                  currentIndex = 0;
                });
              }
            },
            child: ExpensesItem(
              isSelected: currentIndex == 0,
              item: items[0],
            )),
      ),
      const SizedBox(width: AppSize.s12,),
      Expanded(
        child: InkWell(
            onTap: () {
              if (currentIndex != 1) {
                setState(() {
                  currentIndex = 1;
                });
              }
            },
            child: ExpensesItem(
              isSelected: currentIndex == 1,
              item: items[1],
            )),
      ),
      const SizedBox(width: AppSize.s12,),
      Expanded(
        child: InkWell(
            onTap: () {
              if (currentIndex != 2) {
                setState(() {
                  currentIndex = 2;
                });
              }
            },
            child: ExpensesItem(
              isSelected: currentIndex == 2,
              item: items[2],
            )),
      ),
    ],);
  }
}
