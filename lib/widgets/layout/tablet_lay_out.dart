import 'package:admin_dashboard/widgets/components/all_expenses_and_quick_invoice_section.dart';
import 'package:admin_dashboard/widgets/components/custom_chart_widget.dart';
import 'package:admin_dashboard/widgets/components/custom_drawer.dart';
import 'package:admin_dashboard/widgets/components/my_card_and_transaction_history.dart';
import 'package:flutter/material.dart';

class TabletLayOut extends StatelessWidget {
  const TabletLayOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              children: [
                AllExpensesAndQuickInvoiceSection(),
                MyCardAndTransactionHistory(),
                const SizedBox(
                  height: 16,
                ),
                CustomChartWidget()
              ],
            ),
          ),
        ),
        SizedBox(
          width: 24,
        ),
      ],
    );
  }
}
