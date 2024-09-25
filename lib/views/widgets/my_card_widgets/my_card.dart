import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/utils/app_styles.dart';
import 'package:responsive_ui_dash_board/views/widgets/my_card_widgets/card_item.dart';
import 'package:responsive_ui_dash_board/views/widgets/part_tow_of_desktop_layout(allexpenses)/custom_background_container.dart';
class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(paddingHorizontal: 24,
    child: Column(
      children: [
         SizedBox(height: 24,),
         Text("My card",style:Styles.styleSemiBold20,),
         SizedBox(height: 20,),
        CardItem()
      ],

    )
      ,);
  }
}

