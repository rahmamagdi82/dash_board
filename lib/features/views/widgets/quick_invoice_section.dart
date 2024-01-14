import 'package:dash_board/core/resources/color_manager.dart';
import 'package:dash_board/core/resources/values_manager.dart';
import 'package:dash_board/features/views/widgets/quick_invoice_form.dart';

import 'package:flutter/material.dart';

import 'custom_background.dart';
import 'custom_divider.dart';
import 'custom_title.dart';
import 'latest_transaction.dart';

class QuickInvoiceSection extends StatelessWidget {
  const QuickInvoiceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
        widget: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const CustomTitle(title: 'Quick Invoice'),
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
        const CustomDivider(),
        const QuickInvoiceForm()
      ],
    ));
  }
}
