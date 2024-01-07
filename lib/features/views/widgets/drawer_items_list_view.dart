import 'package:flutter/material.dart';

import '../../../core/resources/values_manager.dart';
import '../../../core/utils/assets.gen.dart';
import '../../../models/drawer_item_model.dart';
import 'drawer_item_widget.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({Key? key}) : super(key: key);

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {

  List<DrawerItem> drawerItems = [
    DrawerItem(image: Assets.images.dashboard, title: 'Dashboard'),
    DrawerItem(image: Assets.images.myTransaction, title: 'My Transaction'),
    DrawerItem(image: Assets.images.statistics, title: 'Statistics'),
    DrawerItem(image: Assets.images.walletAccount, title: 'Wallet Account'),
    DrawerItem(image: Assets.images.myInvestments, title: 'My Investments'),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) => InkWell(
        onTap: (){
          setState(() {
            if(currentIndex != index){
              currentIndex = index;
            }
          });
        },
        child: DrawerItemWidget(
          drawerItem: drawerItems[index],
          isSelected: currentIndex == index,
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: AppSize.s20,
      ),
    );
  }
}
