import 'package:flutter/material.dart';
import 'package:responsive_ui_dash_board/utils/size_config.dart';
import 'package:responsive_ui_dash_board/views/widgets/inCome_section/detailed_income_chart.dart';
import 'package:responsive_ui_dash_board/views/widgets/inCome_section/in_come_shart.dart';
import 'package:responsive_ui_dash_board/views/widgets/inCome_section/income_details_list_view.dart';
class InComeSectionBody extends StatelessWidget {
  const InComeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width <SizeConfig.deskTop?Row(
      children: [
        Expanded(

          child: InComeChart(),

        ),
        SizedBox(width: 16),
        Expanded(
          flex: 2,
          child: InComeDetailsListView(),
        ),
      ],
    ):
        const Expanded(child: Padding(
          padding: EdgeInsets.all(22),
          child: DetailedIncomeChart(),
        ));
  }
}
