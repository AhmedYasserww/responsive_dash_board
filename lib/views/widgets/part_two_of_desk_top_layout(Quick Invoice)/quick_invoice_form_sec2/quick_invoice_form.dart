import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/views/widgets/part_two_of_desk_top_layout(Quick%20Invoice)/quick_invoice_form_sec2/custom_button.dart';
import 'package:responsive_ui_dash_board/views/widgets/part_two_of_desk_top_layout(Quick%20Invoice)/quick_invoice_form_sec2/custom_drop_down.dart';
import 'package:responsive_ui_dash_board/views/widgets/part_two_of_desk_top_layout(Quick%20Invoice)/title_text_field.dart';
class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(child: TitleTextField(title: "Customer name", hintText: "Type customer name")),
            SizedBox(width: 16,),
            Expanded(child: TitleTextField(title: "Customer Email", hintText: "Type customer Email")),

          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(child: TitleTextField(title: "Item name", hintText: "Type customer name")),
            SizedBox(width: 16,),
            Expanded(child: CustomDropDown())

          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(child: CustomButton(text: "Add more details",backgroundColor: Colors.white,textColor: Color(0xff4EB7F2),)),
            SizedBox(width: 24,),
            Expanded(child: CustomButton(text: "Send Money",)),

          ],
        ),
        SizedBox(height: 24,)
      ],
    );
  }
}
