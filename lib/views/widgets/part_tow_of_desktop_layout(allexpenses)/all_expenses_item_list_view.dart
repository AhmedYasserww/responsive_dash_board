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
      children: expensesItem.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: AllExpensesItem(
              selectedItem: selectedIndex == index,
              allExpensesModel: item,
            ),
          ),
        );
      }).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
