import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/views/widgets/part_tow_of_desktop_layout/all_expenses_item_list_view.dart';
import 'package:responsive_ui_dash_board/views/widgets/part_tow_of_desktop_layout/custom_background_container.dart';
import 'all_expenses_header.dart';
class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 40),
      child: CustomBackgroundContainer(
        child: Column(
          children: [
            SizedBox(height: 20,),
            const AllExpensesHeader(),
            SizedBox(height: 16,),
            AllExpensesItemListView()
          ],
        ),
      ),
    );
  }
}


