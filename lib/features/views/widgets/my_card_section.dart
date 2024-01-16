import 'package:dash_board/core/resources/values_manager.dart';
import 'package:dash_board/features/views/widgets/custom_title.dart';
import 'package:flutter/material.dart';

import 'dots_indicator.dart';
import 'my_card_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({Key? key}) : super(key: key);

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {

  late PageController pageController;
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentIndex = pageController.page!.round();
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomTitle(title: 'My Card'),
        const SizedBox(
          height: AppSize.s20,
        ),
        MyCardPageView(controller: pageController,),
        const SizedBox(
          height: AppSize.s20,
        ),
        DotsIndicator(
            currentIndex:currentIndex
        ),
      ],
    );
  }
}
