import 'package:dash_board/core/resources/values_manager.dart';
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
      children: items.asMap().entries.map((e) {
        return Expanded(
          child: InkWell(
              onTap: () {
                if (currentIndex != e.key) {
                  setState(() {
                    currentIndex = e.key;
                  });
                }
              },
              child: (e.key != 2)
                  ? Row(
                      children: [
                        Expanded(
                            child: ExpensesItem(
                          isSelected: currentIndex == e.key,
                          item: items[e.key],
                        )),
                        const SizedBox(
                          width: AppSize.s12,
                        ),
                      ],
                    )
                  : ExpensesItem(
                      isSelected: currentIndex == e.key,
                      item: items[e.key],
                    )),
        );
      }).toList(),
    );
  }
}
