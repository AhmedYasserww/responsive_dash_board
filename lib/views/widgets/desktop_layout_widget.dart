import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/views/widgets/all_expenses_and_quick_invoice_sec.dart';
import 'package:responsive_ui_dash_board/views/widgets/my_card_widgets/my_cards_section.dart';
import 'custom_drawer.dart';
class DesktopLayoutWidget extends StatelessWidget {
  const DesktopLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return    const Row(
      children: [
        Expanded(flex: 70,
            child: CustomDrawer()),
        SizedBox(width: 32,),
        Expanded(
            flex: 151,
            child:AllExpensesAndQuickInvoiceSec()
           ),
        Expanded(
          flex: 117,
            child: MyCardsSection()
        )
      ]
    );
  }
}

