import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/utils/app_styles.dart';
class CustomDropDown extends StatefulWidget {
  const CustomDropDown({super.key});
  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String? selectedCurrency = 'USD';
  List<String> currencies = ['USD', 'EUR', 'GBP'];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text("Item mount",style: Styles.styleMedium16(context),),
        const SizedBox(height: 12,),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.grey[100], // Background color
            borderRadius: BorderRadius.circular(12), // Rounded corners
          ),
          child: DropdownButton<String>(
            value: selectedCurrency,
            underline: const SizedBox(),
            icon: Transform.rotate(
                angle:-1.571,
                child: const Icon(Icons.arrow_back_ios_new_outlined, color: Color(0xff064061))), // Custom arrow color

            onChanged: (String? newValue) {
              setState(() {
                selectedCurrency = newValue!;
              });
            },
            items: currencies.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    value,
                    style: TextStyle(
                      color: Colors.grey[600], // Custom text color
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}