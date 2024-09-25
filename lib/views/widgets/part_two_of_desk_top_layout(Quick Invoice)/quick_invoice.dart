import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/views/widgets/part_tow_of_desktop_layout(allexpenses)/custom_background_container.dart';
import 'package:responsive_ui_dash_board/views/widgets/part_two_of_desk_top_layout(Quick%20Invoice)/latest_%20transaction_widget.dart';
import 'package:responsive_ui_dash_board/views/widgets/part_two_of_desk_top_layout(Quick%20Invoice)/quick_invoice_header.dart';
import 'package:responsive_ui_dash_board/views/widgets/part_two_of_desk_top_layout(Quick%20Invoice)/title_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomBackgroundContainer(
        paddingHorizontal: 24,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 24,
            ),
            QuickInvoiceHeader(),
            LatestTransactionWidget(),

            Divider(height:48,),
            TitleTextField(title: "Customer name",hintText: "Type customer name",),
           //  SizedBox(height: 24,),
           //  TitleTextField(),
           //  SizedBox(height: 24,),
           // Container(
           //   color: Colors.red,
           //   height: 62,)

          ],
        ));
  }
}
