import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/utils/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayOut,
      required this.tabletLayOut,
      required this.desktopLayOut});
  final WidgetBuilder mobileLayOut, tabletLayOut, desktopLayOut;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {

        if (constrains.maxWidth < SizeConfig.tablet) {
          return mobileLayOut(context);
        }
        if (constrains.maxWidth <SizeConfig.deskTop) {
          return tabletLayOut(context);
        }
        else {
          return desktopLayOut(context);
        }
      },
    );
  }
}
