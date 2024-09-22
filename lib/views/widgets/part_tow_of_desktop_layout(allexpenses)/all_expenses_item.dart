import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/views/widgets/part_tow_of_desktop_layout(allexpenses)/active_and_inactive_an_expenses_item.dart';
import '../../../models/all_expenses_model.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.allExpensesModel, required this.selectedItem});
  final AllExpensesModel allExpensesModel;
  final bool selectedItem;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(
          opacity: animation,
          child: ScaleTransition(
            scale: animation,
            child: child,
          ),
        );
      },
      child: selectedItem
          ? ActiveAllExpensesItem(
          key: ValueKey('active'), allExpensesModel: allExpensesModel)
          : InActiveAllExpensesItem(
          key: ValueKey('inactive'), allExpensesModel: allExpensesModel),
    );
  }
}
