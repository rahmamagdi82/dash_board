import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/font_manager.dart';
import '../../../core/utils/style_manager.dart';
import '../../../core/utils/values_manager.dart';
import '../../../core/utils/assets.gen.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420/215,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: AppPadding.p20,horizontal: AppPadding.p31),
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(Assets.images.cardBackground.path),),
              color: ColorManager.secondary,
              borderRadius: BorderRadius.circular(AppSize.br12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name card',
                      style:
                      FontStyles.getRegularStyle(context,color: ColorManager.white),
                    ),
                    const SizedBox(
                      height: AppSize.s8,
                    ),
                    Text(
                      'Syah Bandi',
                      style: FontStyles.getMediumStyle(context,
                          fontSize: FontSize.s20, color: ColorManager.white),
                    ),
                  ],
                ),
                SvgPicture.asset(Assets.images.gallery)
              ],
            ),
            const Expanded(child: SizedBox()),
            Text(
              '0918 8124 0042 8129',
              style: FontStyles.getSemiBoldStyle(context,
                  fontSize: FontSize.s24, color: ColorManager.white),
            ),
            const SizedBox(
              height: AppSize.s12,
            ),
            Text(
              '12/20 - 124',
              style: FontStyles.getRegularStyle(context,
                  color: ColorManager.white),
            ),
          ],
        ),
          ),
    );
  }
}
