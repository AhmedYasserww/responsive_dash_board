import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/utils/app_styles.dart';
class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Transaction History",style: Styles.styleSemiBold20.copyWith(color: const Color(0xff064061)),),
        Text("See all",style: Styles.styleMedium16.copyWith(color: const Color(0xff4EB7F2)),),

      ],
    );
  }
}