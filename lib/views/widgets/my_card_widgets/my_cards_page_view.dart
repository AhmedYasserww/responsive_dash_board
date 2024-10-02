import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/views/widgets/my_card_widgets/card_item.dart';
import 'package:responsive_ui_dash_board/views/widgets/my_card_widgets/my_cards_section.dart';
class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    // return PageView.builder(
    //   itemCount: 3,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context,i){
    //   return const CardItem();
    // });
    //هيا ليست اوف ويدجت يعنى المفروض تستخدمها مع عدد محدود
    return ExpandablePageView(
      scrollDirection: Axis.horizontal,
      children: List.generate(3, (i)=>const CardItem())

    );

  }
}
