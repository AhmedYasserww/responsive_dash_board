import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/views/widgets/part_tow_of_desktop_layout(allexpenses)/all_expenses_item_list_view.dart';
import 'package:responsive_ui_dash_board/views/widgets/part_tow_of_desktop_layout(allexpenses)/custom_background_container.dart';
import 'all_expenses_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      paddingHorizontal: 20,
      child: Column(
        children: [
           SizedBox(height: 20),
           AllExpensesHeader(),
           SizedBox(height: 16),
           AllExpensesItemListView(),
           SizedBox(height: 16),
        ],
      ),
    );
  }
}
