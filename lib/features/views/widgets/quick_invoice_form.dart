import 'package:flutter/material.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/values_manager.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import 'custom_text_field_widget.dart';
import 'item_name_widget.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
              child: CustomTextFieldWidget(
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
              child: CustomTextFieldWidget(
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
              child: CustomTextFieldWidget(
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
              child: CustomTextFieldWidget(
                  title: 'Item name',
                  childWidget: ItemNameWidget()),
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