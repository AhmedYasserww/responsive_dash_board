import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/views/widgets/my_card_widgets/my_cards_section.dart';
import 'package:responsive_ui_dash_board/views/widgets/part_tow_of_desktop_layout(allexpenses)/custom_background_container.dart';
import 'package:responsive_ui_dash_board/views/widgets/transaction_history_widgets/transaction_history.dart';
class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      paddingHorizontal: 24,
      child: Column(
        children: [
          MyCardsSection(),
         // SizedBox(height: 20,),
          Divider(
            color: Color(0xffF1F1F1),
            height: 40,
          ),
          TransactionHistory()
        ],
      ),
    );
  }
}
