import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_styles.dart';
import '../../models/model_of_listTile.dart';
class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.listTileModel});
  final ListTileModel listTileModel ;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(listTileModel.image,),
      title:   FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(listTileModel.title,style: Styles.styleBold16(context),)),
      trailing: Container(
        width: 3.27,
        decoration: const BoxDecoration(color: Color(0xff4EB7F2)),
      ),
    );
  }
}

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.listTileModel});
  final ListTileModel listTileModel ;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: SvgPicture.asset(listTileModel.image),
        title: FittedBox(
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child: Text(listTileModel.title,style: Styles.styleRegular16(context),))
    );
  }
}