import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/utils/app_styles.dart';
import 'package:responsive_ui_dash_board/views/widgets/part_two_of_desk_top_layout(Quick%20Invoice)/custom_text_field.dart';
class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.title, required this.hintText});
  final String title,hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: Styles.styleMedium16(context),),
        const SizedBox(height: 12,),
        CustomTextField(hintText:hintText)
      ],
      
    );
  }
}
