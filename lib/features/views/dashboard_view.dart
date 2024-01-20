import 'package:dash_board/core/utils/color_manager.dart';
import 'package:dash_board/features/views/widgets/adaptive_layout.dart';
import 'package:dash_board/features/views/widgets/custom_drawer.dart';
import 'package:dash_board/features/views/widgets/desktop_layout.dart';
import 'package:dash_board/features/views/widgets/mobile_layout.dart';
import 'package:dash_board/features/views/widgets/tablet_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.scaffoldBackgroundColor,
      appBar: (MediaQuery.sizeOf(context).width < 800)?AppBar(elevation: 0,backgroundColor: ColorManager.secondary,):null,
      drawer: const CustomDrawer(),
      body: AdaptiveLayout(
        mobileLayout: (BuildContext context) => const MobileLayout(),
        tabletLayout: (BuildContext context) => const TabletLayout(),
        desktopLayout: (BuildContext context) => const DesktopLayout(),
      ),
    );
  }
}
