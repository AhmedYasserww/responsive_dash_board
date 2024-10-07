import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/models/transactions_model.dart';
import 'package:responsive_ui_dash_board/views/widgets/transaction_history_widgets/transaction_item.dart';
class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    // return ListView.builder(
    //   physics: const NeverScrollableScrollPhysics(),
    //   shrinkWrap: true,
    //   itemCount: itemsTransaction.length,
    //     itemBuilder: (context,i){
    //   return TransactionItem(transactionModel: itemsTransaction[i]);
    // });
    return Column(
      children: itemsTransaction.map((e)=>TransactionItem(transactionModel: e)).toList(),
    );
  }
}
