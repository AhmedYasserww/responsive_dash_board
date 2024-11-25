import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/utils/app_styles.dart';

import '../../../models/item_details_model.dart';
class IncomeItemDetails extends StatelessWidget {
  const IncomeItemDetails({super.key, required this.itemDetailsModel});
final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
   // log(MediaQuery.sizeOf(context).width.toString());
   //  return FittedBox(
   //    fit: BoxFit.scaleDown,
   //    child: Row(
   //      children: [
   //      Container(
   //          height: 12,
   //          width: 12,
   //          decoration:  ShapeDecoration(
   //            color: itemDetailsModel.color,
   //              shape: const OvalBorder()),
   //        ),
   //        SizedBox(width: 16,),
   //        Text(itemDetailsModel.title,style: Styles.styleRegular16,),
   //        SizedBox(width: 24,),
   //
   //        Text(itemDetailsModel.value,style: Styles.styleMedium16,),
   //
   //      ],
   //    ),
   //  );
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        height: 12,
        width: 12,
        decoration:  ShapeDecoration(
          color: itemDetailsModel.color,
            shape: const OvalBorder()),
      ),
      title: Text(itemDetailsModel.title,style: Styles.styleRegular16(context),),
        trailing: Text(itemDetailsModel.value,style: Styles.styleMedium16(context),),
    );
  }
}

