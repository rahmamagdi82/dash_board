import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/style_manager.dart';
import '../../../core/resources/values_manager.dart';
import '../../../models/drawer_item_model.dart';

class DrawerItemWidget extends StatelessWidget {
  const DrawerItemWidget(
      {Key? key, required this.drawerItem, required this.isSelected})
      : super(key: key);
  final DrawerItem drawerItem;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: SvgPicture.asset(drawerItem.image),
      title: FittedBox(
          alignment: AlignmentDirectional.topStart,
          fit: BoxFit.scaleDown,
          child: Text(
            drawerItem.title,
            style: isSelected?FontStyles.getBoldStyle():FontStyles.getRegularStyle(
                color: ColorManager.primary),
          )),
      trailing: isSelected
          ? Container(
              width: AppSize.s3,
              color: ColorManager.secondary,
            )
          : null,
    );
  }
}
