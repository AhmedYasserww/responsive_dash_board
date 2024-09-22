import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_images.dart';
import 'custom_drawer.dart';
class DesktopLayoutWidget extends StatelessWidget {
  const DesktopLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Expanded(child: CustomDrawer())
      ]
    );
  }
}
