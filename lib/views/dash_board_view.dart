import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/views/widgets/desktop_layout_widget.dart';
import 'adaptive_layout_widget.dart';
class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
        body: AdaptiveLayout(
      mobileLayOut: (context) => const SizedBox(),
      tabletLayOut: (context) => const SizedBox(),
      desktopLayOut: (context) => const DesktopLayoutWidget(),
    )
    );
  }
}
