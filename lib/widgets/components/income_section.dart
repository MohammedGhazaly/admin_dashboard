import 'package:admin_dashboard/widgets/components/custom_chart_widget.dart';
import 'package:admin_dashboard/widgets/components/income_details.dart';
import 'package:admin_dashboard/widgets/components/my_card_and_transaction_history.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatefulWidget {
  const IncomeSection({super.key});

  @override
  State<IncomeSection> createState() => _IncomeSectionState();
}

class _IncomeSectionState extends State<IncomeSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            MyCardAndTransactionHistory(),
            const SizedBox(
              height: 16,
            ),
            CustomChartWidget()
          ],
        ),
      ),
    );
  }
}
