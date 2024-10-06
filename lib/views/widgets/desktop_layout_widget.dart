import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/views/widgets/all_expenses_and_quick_invoice_sec.dart';
import 'package:responsive_ui_dash_board/views/widgets/myCard_and_transaction_histroySection.dart';
import 'package:responsive_ui_dash_board/views/widgets/my_card_widgets/my_cards_section.dart';
import 'package:responsive_ui_dash_board/views/widgets/transaction_history_widgets/transaction_history.dart';
import 'custom_drawer.dart';
import 'inCome_section/in_come_section.dart';

class DesktopLayoutWidget extends StatelessWidget {
  const DesktopLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        const Expanded(child: CustomDrawer()),
        const SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                child: SingleChildScrollView(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: const AllExpensesAndQuickInvoiceSec(),
                      ),
                      const SizedBox(width: 24),
                      Expanded(
                        child: Padding( // إضافة Padding من الأعلى فقط
                          padding: const EdgeInsets.only(top: 40.0), // Padding من الأعلى
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const MyCardAndTransactionHistorySection(),
                              const SizedBox(height: 24),
                              Flexible(
                                fit: FlexFit.loose,
                                child: const InComeSection(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
