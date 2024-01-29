import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/widgets/components/expanses_drop_down.dart';
import 'package:admin_dashboard/widgets/components/income_details.dart';
import 'package:admin_dashboard/widgets/components/my_card_and_transaction_history.dart';
import 'package:admin_dashboard/widgets/components/transaction_history.dart';
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
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
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
            ),
            const SizedBox(
              height: 16,
            ),
            MyCardAndTransactionHistory(),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 300,
              child: Container(
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: PieChart(
                          getChartData(),
                        ),
                      ),
                    ),
                    Expanded(child: IncomeDetails())
                  ],
                ),
              ),
            )
          ],
        ),
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
      ],
    );
  }
}
