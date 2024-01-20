import 'package:dash_board/core/utils/values_manager.dart';
import 'package:dash_board/features/views/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

import 'mobile_layout.dart';


class TabletLayout extends StatelessWidget {
  const TabletLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: AppSize.s32,),
        Expanded(flex: 3,child: MobileLayout(isTablet: true,)),
        SizedBox(width: AppSize.s32,),
      ],
    );
  }
}