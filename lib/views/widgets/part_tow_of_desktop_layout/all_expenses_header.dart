import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';
class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("All Expenses",style:Styles.styleSemiBold20,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: const Color(0xffF1F1F1))
                  //border:
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 14),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Monthly",style: Styles.styleMedium16.copyWith(color: Color(0xff064061))),
                      const SizedBox(width: 18,),
                      Transform.rotate(
                        //القيمه هنا مش dgree هيا radians
                        angle:-1.571,
                          child: const Icon(Icons.arrow_back_ios_new_outlined,color: Color(0xff064061),size: 32,))
                    ],
                  ),
                ),)
            ],),
        );


  }
}
