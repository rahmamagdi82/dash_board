import 'package:dash_board/core/utils/values_manager.dart';
import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({Key? key, required this.mobileLayout, required this.tabletLayout, required this.desktopLayout}) : super(key: key);

  final WidgetBuilder mobileLayout,tabletLayout,desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth < AppSize.tablet){
        return mobileLayout(context);
      }
      else if(constraints.maxWidth < AppSize.deskTop){
        return tabletLayout(context);
      }
      else{
        return desktopLayout(context);
      }
    });
  }
}