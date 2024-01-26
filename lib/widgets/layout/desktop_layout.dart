import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/widgets/components/all_expenses_and_quick_invoice_section.dart';
import 'package:admin_dashboard/widgets/components/custom_drawer.dart';
import 'package:admin_dashboard/widgets/components/expanses_drop_down.dart';
import 'package:admin_dashboard/widgets/components/my_card_and_transaction_history.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: AllExpensesAndQuickInvoiceSection(),
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Column(
              children: [
                MyCardAndTransactionHistory(),
                IncomeSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

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
          )
        ],
      ),
    );
  }
}
