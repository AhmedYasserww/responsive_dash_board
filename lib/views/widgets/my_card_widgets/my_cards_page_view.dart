import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/views/widgets/my_card_widgets/card_item.dart';
class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({super.key, required this.pageController});
final PageController pageController;
  @override
  Widget build(BuildContext context) {

    //هيا ليست اوف ويدجت يعنى المفروض تستخدمها مع عدد محدود
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(3, (i)=>const CardItem())

    );

  }
}
