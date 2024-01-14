import 'package:dash_board/core/resources/values_manager.dart';
import 'package:dash_board/features/views/widgets/custom_title.dart';
import 'package:flutter/material.dart';

import 'my_card.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTitle(title: 'My Card'),
        SizedBox(
          height: AppSize.s20,
        ),
        MyCard(),
        SizedBox(
          height: AppSize.s20,
        ),

      ],
    );
  }
}
