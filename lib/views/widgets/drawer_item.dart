import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui_dash_board/utils/app_styles.dart';
import 'package:responsive_ui_dash_board/views/widgets/active_and_inActive_widget.dart';

import '../../models/model_of_listTile.dart';
class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.listTileModel, required this.isActive});
  final bool isActive  ;
 final ListTileModel listTileModel ;
  @override
  Widget build(BuildContext context) {
    return isActive ? ActiveDrawerItem(listTileModel: listTileModel) : InActiveDrawerItem(listTileModel: listTileModel);
  }
}

