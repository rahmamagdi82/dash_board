import 'package:flutter/material.dart';

import '../../../core/utils/values_manager.dart';
import '../../../core/utils/assets.gen.dart';
import '../../../models/drawer_item_model.dart';
import 'drawer_item_widget.dart';

class DrawerBottomSection extends StatelessWidget {
  const DrawerBottomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(
          height: AppSize.s20,
        ),
        DrawerItemWidget(
          drawerItem: DrawerItem(image: Assets.images.setting, title: 'Setting system'),
          isSelected: false,
        ),
        const SizedBox(
          height: AppSize.s20,
        ),
        DrawerItemWidget(
          drawerItem: DrawerItem(image: Assets.images.logout, title: 'Logout account'),
          isSelected: false,
        ),
      ],
    );
  }
}
