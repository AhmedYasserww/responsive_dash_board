import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/utils/size_config.dart';
import 'package:responsive_ui_dash_board/views/dash_%20board_tablet_layout.dart';
import 'package:responsive_ui_dash_board/views/dash_board_mobile_layout.dart';
import 'package:responsive_ui_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_ui_dash_board/views/widgets/desktop_layout_widget.dart';
import 'adaptive_layout_widget.dart';
class ResponsiveDashBoard extends StatefulWidget {
  const ResponsiveDashBoard({super.key});

  @override
  State<ResponsiveDashBoard> createState() => _ResponsiveDashBoardState();
}

class _ResponsiveDashBoardState extends State<ResponsiveDashBoard> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.sizeOf(context).width);
    return Scaffold(
      key:scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width<SizeConfig.tablet?AppBar(
        elevation: 0,
        backgroundColor:Colors.black,
        leading: IconButton(
          onPressed: (){
            scaffoldKey.currentState!.openDrawer();
          },
            icon: const Icon(Icons.menu,color: Colors.white,)),
      ) : null,
      drawer: MediaQuery.sizeOf(context).width<SizeConfig.tablet?const CustomDrawer():null,
      backgroundColor: const Color(0xffE5E5E5),
        body: AdaptiveLayout(
      mobileLayOut: (context) => const DashBoardMobileLayout(),
      tabletLayOut: (context) => const DashBoardTabletLayout(),
      desktopLayOut: (context) => const DesktopLayoutWidget(),
    )
    );
  }
}
