import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/views/widgets/all_expenses_and_quick_invoice_sec.dart';
import 'package:responsive_ui_dash_board/views/widgets/inCome_section/in_come_section.dart';
import 'package:responsive_ui_dash_board/views/widgets/myCard_and_transaction_histroySection.dart';
class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [

          //SizedBox(height: 40,),
          AllExpensesAndQuickInvoiceSec(),
          SizedBox(height: 24,),
          MyCardAndTransactionHistorySection(),
          SizedBox(height: 24,),
          InComeSection()
        ],
      ),
    );
  }
}
