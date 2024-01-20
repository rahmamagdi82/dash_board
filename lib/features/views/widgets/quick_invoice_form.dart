import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/values_manager.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import 'custom_title_text_field.dart';
import 'item_name_dropdown.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
              child: CustomTitleTextField(
                title: 'Customer name',
                childWidget: CustomTextFormField(
                    hintText: 'Type customer name',
                    keyboardType: TextInputType.name),
              ),
            ),
            SizedBox(
              width: AppSize.s16,
            ),
            Expanded(
              child: CustomTitleTextField(
                title: 'Customer Email',
                childWidget: CustomTextFormField(
                    hintText: 'Type customer email',
                    keyboardType: TextInputType.emailAddress),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: AppSize.s24,
        ),
        const Row(
          children: [
            Expanded(
              child: CustomTitleTextField(
                title: 'Item name',
                childWidget: CustomTextFormField(
                    hintText: 'Type item name',
                    keyboardType: TextInputType.name),
              ),
            ),
            SizedBox(
              width: AppSize.s16,
            ),
            Expanded(
              child: CustomTitleTextField(
                  title: 'Item name',
                  childWidget: ItemNameDropdown()),
            ),
          ],
        ),
        const SizedBox(
          height: AppSize.s24,
        ),
        Row(
          children: [
            Expanded(
                child: CustomButton(
                  text: 'Add more details',
                  fontColor: ColorManager.secondary,
                  backgroundColor: ColorManager.white,
                  onPressed: () {},
                )),
            const SizedBox(
              width: AppSize.s24,
            ),
            Expanded(
                child: CustomButton(
                  text: 'Send Money',
                  fontColor: ColorManager.white,
                  backgroundColor: ColorManager.secondary,
                  onPressed: () {},
                ))
          ],
        )
      ],
    );
  }
}
