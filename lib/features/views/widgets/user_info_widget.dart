import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';
import '../../../core/resources/style_manager.dart';
import '../../../core/resources/values_manager.dart';
import '../../../models/user_model.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({Key? key, required this.user}) : super(key: key);

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
            style: FontStyles.getSemiBoldStyle(),
          ),
        ),
        subtitle: FittedBox(
          alignment: AlignmentDirectional.topStart,
          fit: BoxFit.scaleDown,
          child: Text(
            user.email,
            style: FontStyles.getRegularStyle(
                fontSize: FontSize.s12, color: ColorManager.darkGray),
          ),
        ),
      ),
    );
  }
}
