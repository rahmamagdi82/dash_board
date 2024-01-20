import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/font_manager.dart';
import '../../../core/utils/style_manager.dart';
import '../../../core/utils/values_manager.dart';
import '../../../models/user_model.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key, required this.user}) : super(key: key);

  final User user;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.br12),
      ),
      color: ColorManager.lightGray,
      child: ListTile(
        leading: SvgPicture.asset(user.image),
        title: FittedBox(
          alignment: AlignmentDirectional.topStart,
          fit: BoxFit.scaleDown,
          child: Text(
            user.name,
            style: FontStyles.getSemiBoldStyle(context),
          ),
        ),
        subtitle: FittedBox(
          alignment: AlignmentDirectional.topStart,
          fit: BoxFit.scaleDown,
          child: Text(
            user.email,
            style: FontStyles.getRegularStyle(context,
                fontSize: FontSize.s12, color: ColorManager.darkGray),
          ),
        ),
      ),
    );
  }
}
