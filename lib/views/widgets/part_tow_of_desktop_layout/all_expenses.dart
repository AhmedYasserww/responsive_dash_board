import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/models/all_expenses_model.dart';
import '../../../utils/app_images.dart';
import 'all_expenses_header.dart';
import 'all_expenses_item.dart';
class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(top: 40),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12)
        ),

        child: Column(
          children: [
            SizedBox(height: 20,),
            const AllExpensesHeader(),
            SizedBox(height: 16,),
            AllExpensesItem(allExpensesModel: AllExpensesModel(image: Assets.assetsImagesInComeSvg, title: "dclvpdv", date: "April 2022", price: r"$2019"),)
          ],
        ),
      ),
    );
  }
}

