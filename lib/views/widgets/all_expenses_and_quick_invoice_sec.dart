import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/views/widgets/part_tow_of_desktop_layout(allexpenses)/all_expenses.dart';
import 'package:responsive_ui_dash_board/views/widgets/part_two_of_desk_top_layout(Quick%20Invoice)/quick_invoice.dart';
class AllExpensesAndQuickInvoiceSec extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSec({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(top: 40,bottom: 30),
            child: Column(
              children: [
                AllExpenses(),
                SizedBox(height: 24,),
                QuickInvoice(),
              ],
            ),
          ) ,
        )
      ],
    );
  }
}
