import 'package:dash_board/features/views/widgets/user_info.dart';
import 'package:flutter/material.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/values_manager.dart';
import '../../../core/utils/assets.gen.dart';
import '../../../models/user_model.dart';
import 'drawer_bottom_section.dart';
import 'drawer_items_list_view.dart';

class CustomDrawer extends StatelessWidget {

  const CustomDrawer({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorManager.white,
      elevation: 0.0,
      child: Padding(
        padding: const EdgeInsets.only(
            left: AppPadding.p28,
            right: AppPadding.p20,
            top: AppPadding.p50,
            bottom: AppPadding.p48),
        child: CustomScrollView(slivers: [
          SliverToBoxAdapter(
            child: UserInfo(
              user: User(
                  image: Assets.images.avatar3,
                  name: 'Lekan Okeowo',
                  email: 'demo@gmail.com'),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: AppSize.s20,
            ),
          ),
          const DrawerItemsListView(),
           const SliverFillRemaining(
            hasScrollBody: false,
            child: DrawerBottomSection(),
           ),
          // const DrawerItemsBottomListView(),
        ]),
      ),
    );
  }

}
