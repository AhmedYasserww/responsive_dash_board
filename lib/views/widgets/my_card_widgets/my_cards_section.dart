import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/utils/app_styles.dart';
import 'package:responsive_ui_dash_board/views/widgets/my_card_widgets/dots_indicator.dart';
import 'package:responsive_ui_dash_board/views/widgets/my_card_widgets/my_cards_page_view.dart';
import 'package:responsive_ui_dash_board/views/widgets/part_tow_of_desktop_layout(allexpenses)/custom_background_container.dart';
class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController ;
  int currentPageIndex = 0;
  @override
  void initState() {
pageController = PageController();
pageController.addListener(() {
    currentPageIndex = pageController.page!.round();
    setState(() {

    });
  }
);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         const SizedBox(height: 24,),
         const Text("My card",style:Styles.styleSemiBold20,),
         const SizedBox(height: 20,),
        MyCardsPageView(
          pageController: pageController,
        ),
       const SizedBox(height: 20,),
         DotsIndicator(
          currentPageIndex: currentPageIndex,
        )
      ],

    );
  }
}

