import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/models/all_expenses_model.dart';
import 'package:responsive_ui_dash_board/utils/app_styles.dart';
import 'package:responsive_ui_dash_board/views/widgets/part_tow_of_desktop_layout(allexpenses)/all_expenses_item_header.dart';
class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.allExpensesModel,
  });

  final AllExpensesModel allExpensesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color:const Color(0xffF1F1F1),width: 1),
        borderRadius: BorderRadius.circular(12),

      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16,),
            AllExpensesItemHeader(
              imageColor: const Color(0xff4EB7F2),
              iconColor: const Color(0xff064061),
              image: allExpensesModel.image,
            ),
            const SizedBox(height: 34,),
            Text(allExpensesModel.title,style: Styles.styleSemiBold16,),
            const SizedBox(height: 8,),
            Text(allExpensesModel.date,style: Styles.styleRegular14,),
            const SizedBox(height: 16,),
            Text(allExpensesModel.price,style: Styles.styleSemiBold24.copyWith(color: const Color(0xff4EB7F2)),),
            const SizedBox(height: 16,)

          ],
        ),
      ),
    );
  }
}
class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.allExpensesModel,
  });

  final AllExpensesModel allExpensesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff4EB7F2),
        borderRadius: BorderRadius.circular(12),

      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16,),
            AllExpensesItemHeader(
              backGroundImageColor: Colors.white.withOpacity(.1),
              iconColor:Colors.white ,
              imageColor: Colors.white,
              image: allExpensesModel.image,
            ),
            const SizedBox(height: 34,),
            Text(allExpensesModel.title,style: Styles.styleSemiBold16.copyWith(color: Colors.white),),
            const SizedBox(height: 8,),
            Text(allExpensesModel.date,style: Styles.styleRegular14.copyWith(color: Color(0xffFAFAFA)),),
            const SizedBox(height: 16,),
            Text(allExpensesModel.price,style: Styles.styleSemiBold24.copyWith(color: Colors.white),),
            const SizedBox(height: 16,)

          ],
        ),
      ),
    );
  }
}
