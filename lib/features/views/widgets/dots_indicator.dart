import 'package:dash_board/core/utils/color_manager.dart';
import 'package:dash_board/core/utils/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({Key? key, required this.currentIndex,}) : super(key: key);
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: PageController(viewportFraction: 0.9,initialPage: currentIndex),
      count: 3,
      effect: ExpandingDotsEffect(
        dotHeight: AppSize.s8,
        dotWidth: AppSize.s8,
        expansionFactor: 4,
        activeDotColor: ColorManager.secondary,
        dotColor: ColorManager.boarderGray,
      ),
    );
  }
}
