import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/models/user_info_model.dart';
import 'package:responsive_ui_dash_board/views/widgets/user_info_list_tile.dart';
class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:userInfoItems.map((e)=>IntrinsicWidth(child: UserInfoListTile(userInfoModel:e )) ).toList()
      ),
    );
    // return SizedBox(
    //   height:80,
    //   child: ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       itemCount: userInfoItems.length,
    //       itemBuilder: (context,i){
    //         return IntrinsicWidth(
    //             child: UserInfoListTile(userInfoModel: userInfoItems[i]));
    //       }),
    // );
  }
}