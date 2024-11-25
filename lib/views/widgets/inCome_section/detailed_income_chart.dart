import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _InComeChartState();
}

class _InComeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1 ;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1,
        child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, piTouchResponse) {
          activeIndex = piTouchResponse?.touchedSection?.touchedSectionIndex??-1;
          setState(() {

          });
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex==0?1.5:null,
          value: 40,
          titleStyle: Styles.styleRegular16(context).copyWith(color:activeIndex==0?null: Colors.white),
            radius: activeIndex == 0?60 : 50,
            title: activeIndex==0?'Design service':"40%", color: const Color(0xff208CC8)),
        PieChartSectionData(
            titlePositionPercentageOffset: activeIndex==1?2.1:null,
            value: 25,
            titleStyle: Styles.styleRegular16(context).copyWith(color:activeIndex==1?null: Colors.white),
            radius: activeIndex == 1?60 : 50,
    title: activeIndex==1?'Design Product':"25%", color: const Color(0xff4EB7F2)),

        PieChartSectionData(
            titlePositionPercentageOffset: activeIndex==2?1.4:null,

            value: 20,
            titleStyle: Styles.styleRegular16(context).copyWith(color:activeIndex==2?null: Colors.white),
            radius: activeIndex == 2?60 : 50,
    title: activeIndex==2?'Product royalti':"20%", color: const Color(0xff064061)),
        PieChartSectionData(
            titlePositionPercentageOffset: activeIndex==3?1.5:null,
            value: 22,
            titleStyle: Styles.styleRegular16(context).copyWith(color:activeIndex==3?null: Colors.white),
            radius: activeIndex == 3?60 : 50,
            title: activeIndex==3?'Other':"22%", color: const Color(0xffE2DECD)),

      ],
    );
  }
}
