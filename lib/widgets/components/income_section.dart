import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/widgets/components/expanses_drop_down.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatefulWidget {
  const IncomeSection({super.key});

  @override
  State<IncomeSection> createState() => _IncomeSectionState();
}

class _IncomeSectionState extends State<IncomeSection> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Income",
                style: AppStyles.textStyleSemiBold16.copyWith(
                  color: const Color(0xff064061),
                ),
              ),
              ExpansesDropwDown()
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: PieChart(
                    getChartData(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
            enabled: true,
            touchCallback: (p0, pieTouchResponse) {
              activeIndex =
                  pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
              setState(() {});
            }),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            showTitle: false,
            radius: activeIndex == 0 ? 60 : 50,
            value: 40,
            color: const Color(0xff208CC8),
          ),
          PieChartSectionData(
            showTitle: false,
            radius: activeIndex == 1 ? 60 : 50,
            value: 24,
            color: const Color(0xff4EB7F2),
          ),
          PieChartSectionData(
            showTitle: false,
            radius: activeIndex == 2 ? 60 : 50,
            value: 20,
            color: const Color(0xff064061),
          ),
          PieChartSectionData(
            showTitle: false,
            radius: activeIndex == 3 ? 60 : 50,
            value: 22,
            color: const Color(0xffE2DECD),
          ),
        ]);
  }
}
