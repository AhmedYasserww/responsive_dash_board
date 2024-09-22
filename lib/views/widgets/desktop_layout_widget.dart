import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/views/widgets/part_tow_of_desktop_layout(allexpenses)/all_expenses.dart';
import 'package:responsive_ui_dash_board/views/widgets/part_two_of_desk_top_layout(Quick%20Invoice)/quick_invoice.dart';
import 'custom_drawer.dart';
class DesktopLayoutWidget extends StatelessWidget {
  const DesktopLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Row(
      children: [
        Expanded(flex: 1,
            child: CustomDrawer()),
        SizedBox(width: 32,),
        Expanded(
            flex: 2,
            child: Column(
              children: [
                AllExpenses(),
                SizedBox(height: 50,),
                QuickInvoice()
                
              ],
            ))
      ]
    );
  }
}
