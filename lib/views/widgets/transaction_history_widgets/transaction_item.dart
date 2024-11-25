import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/models/transactions_model.dart';
import 'package:responsive_ui_dash_board/utils/app_styles.dart';
class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
final TransactionModel transactionModel ;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation:0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      child: ListTile(
        title: Text(transactionModel.title,style: Styles.styleSemiBold16(context).copyWith(color: const Color(0xff064061),),),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4),
            child: Text(transactionModel.date,style: Styles.styleRegular16(context).copyWith(color: const Color(0xffAAAAAA),),)),
        trailing: Text(transactionModel.amount,
          style: Styles.styleMedium20(context).copyWith(
            color: transactionModel.isWithdrawal?const Color(0xffF3735E):const Color(0xff7DD97B)),),
      ),
    );
      
    
  }
}
