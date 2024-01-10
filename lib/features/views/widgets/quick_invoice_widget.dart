import 'package:dash_board/core/resources/color_manager.dart';
import 'package:dash_board/core/resources/values_manager.dart';
import 'package:dash_board/features/views/widgets/custom_background_widget.dart';
import 'package:dash_board/features/views/widgets/title_widget.dart';

import 'package:flutter/material.dart';

import 'custom_divider.dart';
import 'latest_transaction.dart';

class QuickInvoiceWidget extends StatelessWidget {
  const QuickInvoiceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget(
        widget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const TitleWidget(title: 'Quick Invoice'),
                    const Spacer(),
                    CircleAvatar(
                      radius: AppSize.s24,
                        backgroundColor: ColorManager.lightGray,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            color: ColorManager.secondary,
                          ),
                        )),
                  ],
                ),
                const SizedBox(
                  height: AppSize.s24,
                ),
                const LatestTransaction(),
                const CustomDivider()
              ],
            ));
  }
}
