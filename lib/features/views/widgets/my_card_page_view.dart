import 'package:dash_board/features/views/widgets/my_card.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';


class MyCardPageView extends StatelessWidget {
  const MyCardPageView({Key? key, required this.controller}) : super(key: key);
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: controller,
      children: List.generate(3, (index) => const MyCard()),
    );
  }
}
