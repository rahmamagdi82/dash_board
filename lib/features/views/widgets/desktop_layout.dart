import 'package:dash_board/core/resources/values_manager.dart';
import 'package:dash_board/features/views/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

import 'middle_desktop_widget.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: AppSize.s32,),
        Expanded(flex:3,child: MiddleDesktopWidget()),
        SizedBox(width: AppSize.s24,),
        Expanded(flex:2,child: CustomDrawer()),

      ],
    );
  }
}
