import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/views/widgets/inCome_section/in_come_header.dart';
import 'package:responsive_ui_dash_board/views/widgets/inCome_section/in_come_shart.dart';
import 'package:responsive_ui_dash_board/views/widgets/inCome_section/incom_item_details.dart';
import 'package:responsive_ui_dash_board/views/widgets/inCome_section/income_details_list_view.dart';
import 'package:responsive_ui_dash_board/views/widgets/part_tow_of_desktop_layout(allexpenses)/custom_background_container.dart';

class InComeSection extends StatelessWidget {
  const InComeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomBackgroundContainer(
      paddingHorizontal: 20,
      child: Column(
        children: [
          SizedBox(height: 20),
          InComeHeader(),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 220,
                  child: InComeChart(),
                ),
              ),
              SizedBox(width: 16),
                   Expanded(child: InComeDetailsListView(),)
            ],
          ),
        ],
      ),
    );
  }
}
