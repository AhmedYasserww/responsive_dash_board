import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui_dash_board/views/widgets/part_tow_of_desktop_layout/all_expenses.dart';

import '../../utils/app_images.dart';
import 'custom_drawer.dart';
class DesktopLayoutWidget extends StatelessWidget {
  const DesktopLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Row(
      children: [
        Expanded(flex: 1,
            child: CustomDrawer()),
        SizedBox(width: 32,),
        Expanded(flex: 2,
            child: AllExpenses())
      ]
    );
  }
}
