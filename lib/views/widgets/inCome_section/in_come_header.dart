import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/utils/app_styles.dart';
class InComeHeader extends StatelessWidget {
  const InComeHeader({super.key});

  @override
  Widget build(BuildContext context) {
   return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text("InCome",style:Styles.styleSemiBold20(context),),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xffF1F1F1))
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 14),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Monthly",style: Styles.styleMedium16(context).copyWith(color:const Color(0xff064061))),
                const SizedBox(width: 18,),
                Transform.rotate(
                    angle:-1.571,
                    child: const Icon(Icons.arrow_back_ios_new_outlined,color: Color(0xff064061),size: 32,))
              ],
            ),
          ),)
      ],);
  }
}
