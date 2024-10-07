import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/views/widgets/all_expenses_and_quick_invoice_sec.dart';
import 'package:responsive_ui_dash_board/views/widgets/myCard_and_transaction_histroySection.dart';
import 'custom_drawer.dart';
import 'inCome_section/in_come_section.dart';

class DesktopLayoutWidget extends StatelessWidget {
  const DesktopLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
         Expanded(
             child: CustomDrawer()),
         SizedBox(width: 32),
      Expanded(
        flex: 3,
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child:  Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: AllExpensesAndQuickInvoiceSec()),
                  ),
                  SizedBox(width: 24),
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(height: 40,),
                        MyCardAndTransactionHistorySection(),
                        SizedBox(height: 24),
                        Expanded(child: InComeSection()),
                      ],
                    ),

                  ),
                ],),
            )
          ],
        )
      )
      ],
    );
  }
}
