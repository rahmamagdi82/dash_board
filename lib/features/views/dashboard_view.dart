import 'package:dash_board/features/views/widgets/adaptive_layout.dart';
import 'package:dash_board/features/views/widgets/desktop_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      // drawer: const CustomDrawer(),
      body: AdaptiveLayout(
        mobileLayout: (BuildContext context) => Container(),
        tabletLayout: (BuildContext context) => Container(),
        desktopLayout: (BuildContext context) => const DesktopLayout(),
      ),
    );
  }
}
