import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/utils/app_styles.dart';
import 'package:responsive_ui_dash_board/views/widgets/part_two_of_desk_top_layout(Quick%20Invoice)/latest_transaction_list_view.dart';
class LatestTransactionWidget extends StatelessWidget {
  const LatestTransactionWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Latest Transaction",style: Styles.styleMedium16,),
        LatestTransactionListView()

      ],
    );
  }
}

