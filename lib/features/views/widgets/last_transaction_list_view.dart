import 'package:dash_board/features/views/widgets/user_info.dart';
import 'package:flutter/material.dart';

import '../../../core/resources/values_manager.dart';
import '../../../core/utils/assets.gen.dart';
import '../../../models/user_model.dart';

class LastTransactionListView extends StatefulWidget {
  const LastTransactionListView({Key? key}) : super(key: key);

  @override
  State<LastTransactionListView> createState() =>
      _LastTransactionListViewState();
}

class _LastTransactionListViewState extends State<LastTransactionListView> {
  List<User> latestTransactions = [
    User(
        image: Assets.images.avatar1,
        name: 'Madrani Andi',
        email: 'Madraniadi20@gmail'),
    User(
        image: Assets.images.avatar2,
        name: 'Josua Nunito',
        email: 'Josh Nunito@gmail.com'),
    User(
        image: Assets.images.avatar1,
        name: 'Madrani Andi',
        email: 'Madraniadi20@gmail')
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s80,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => IntrinsicWidth(
              child: UserInfo(user: latestTransactions[index])),
          separatorBuilder: (context, index) => const SizedBox(
                width: AppSize.s12,
              ),
          itemCount: latestTransactions.length),
    );
  }
}
