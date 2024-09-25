import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/utils/app_styles.dart';
class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Quick Invoice",style: Styles.styleSemiBold20,),
        CircleAvatar(
          backgroundColor: Color(0xffFAFAFA),
          radius: 24,
          child: Icon(Icons.add,color: Color(0xff4EB7F2),),
        )
      ],
    );
  }
}
