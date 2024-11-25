import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/utils/app_styles.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({super.key,this.backgroundColor, required this.text, this.textColor});
final Color? backgroundColor ;
final String text ;
  final Color? textColor ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: MaterialButton(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color:backgroundColor?? const Color(0xff4DB7F2),
        onPressed: (){},
        child: Text(text,style: Styles.styleSemiBold18(context).copyWith(color: textColor??Colors.white),) ,
      ),
    );
  }
}
