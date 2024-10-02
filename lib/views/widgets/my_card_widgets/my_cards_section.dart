import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/utils/app_styles.dart';
import 'package:responsive_ui_dash_board/views/widgets/my_card_widgets/dots_indicator.dart';
import 'package:responsive_ui_dash_board/views/widgets/my_card_widgets/my_cards_page_view.dart';
import 'package:responsive_ui_dash_board/views/widgets/part_tow_of_desktop_layout(allexpenses)/custom_background_container.dart';
class MyCardsSection extends StatelessWidget {
  const MyCardsSection({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(paddingHorizontal: 24,
    child: Column(
      children: [
         SizedBox(height: 24,),
         Text("My card",style:Styles.styleSemiBold20,),
         SizedBox(height: 20,),
        MyCardsPageView(),
       SizedBox(height: 20,),
        DotsIndicator()
      ],

    )
      ,);
  }
}

