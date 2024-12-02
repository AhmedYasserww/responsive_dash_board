import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui_dash_board/models/user_info_model.dart';

import '../../utils/app_styles.dart';
class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoModel, });
 final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return   Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading:SvgPicture.asset(userInfoModel.image),
          title:  FittedBox(
            fit: BoxFit.scaleDown,
              alignment: AlignmentDirectional.centerStart,
              child: Text(userInfoModel.title,style:Styles.styleSemiBold16(context))),
          subtitle:  FittedBox(
            fit: BoxFit.scaleDown,
              alignment: AlignmentDirectional.centerStart,
              child: Text(userInfoModel.subTitle,style: Styles.styleRegular12(context),)),
        ),
      ),
    );
  }
}
