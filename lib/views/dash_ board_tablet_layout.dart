import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/views/dash_board_mobile_layout.dart';
import 'package:responsive_ui_dash_board/views/widgets/all_expenses_and_quick_invoice_sec.dart';
import 'package:responsive_ui_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_ui_dash_board/views/widgets/inCome_section/in_come_section.dart';
import 'package:responsive_ui_dash_board/views/widgets/myCard_and_transaction_histroySection.dart';
class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32,),
        Expanded(
          flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: DashBoardMobileLayout(),
            )),
        SizedBox(width: 32,)
      ],
    );
  }
}

