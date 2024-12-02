import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/models/all_expenses_model.dart';
import 'package:responsive_ui_dash_board/views/widgets/part_tow_of_desktop_layout(allexpenses)/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() => _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(

              selectedItem: selectedIndex ==0,
                       allExpensesModel: expensesItem[0],
            ),
          ),
        ),
        const SizedBox(width: 8,),

        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItem(

              selectedItem: selectedIndex ==1,
              allExpensesModel: expensesItem[1],
            ),
          ),
        ),
        const SizedBox(width: 8,),

        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItem(

              selectedItem: selectedIndex ==2,
              allExpensesModel: expensesItem[2],
            ),
          ),
        ),

      ],
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
