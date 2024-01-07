import 'package:flutter/material.dart';

import '../../../core/utils/assets.gen.dart';
import '../../../models/drawer_item_model.dart';
import 'drawer_item_widget.dart';

class BottomPartInDrawer extends StatelessWidget {
  const BottomPartInDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        DrawerItemWidget(
          drawerItem: DrawerItem(image: Assets.images.setting, title: 'Setting system'),
          isSelected: false,
        ),
        DrawerItemWidget(
          drawerItem: DrawerItem(image: Assets.images.logout, title: 'Logout account'),
          isSelected: false,
        ),
      ],
    );
  }
}
