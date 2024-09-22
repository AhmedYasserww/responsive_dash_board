import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image,  this.imageColor, required this.iconColor,  this.backGroundImageColor});
final String image ;

final Color ? imageColor,backGroundImageColor;
final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration:  ShapeDecoration(
           color: backGroundImageColor?? const Color(0xffFAFAFA),
              shape: const OvalBorder()
          ),
          child:Center(child: SvgPicture.asset(image,colorFilter:  ColorFilter.mode(imageColor??const Color(0xff4EB7F2), BlendMode.srcIn),),),
        ),

        Transform.rotate(
            angle:-1.571 *2,
            child:  Icon(Icons.arrow_back_ios_new_outlined,color: iconColor,))
      ],
    );
  }
}
