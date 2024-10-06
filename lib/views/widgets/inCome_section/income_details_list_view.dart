import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/models/item_details_model.dart';
import 'package:responsive_ui_dash_board/views/widgets/inCome_section/incom_item_details.dart';

class InComeDetailsListView extends StatelessWidget {
  const InComeDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
        itemBuilder: (context,i){
      return IncomeItemDetails(itemDetailsModel: items[i]);
    });
  }
}
