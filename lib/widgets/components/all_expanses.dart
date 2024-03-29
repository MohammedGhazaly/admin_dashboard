import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/widgets/components/all_expenses_items_row.dart';
import 'package:admin_dashboard/widgets/components/expanses_drop_down.dart';
import 'package:flutter/material.dart';

class AllExpanses extends StatelessWidget {
  const AllExpanses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "All Expanses",
                style: AppStyles.textStyleSemiBold20.copyWith(
                  color: Color(0xFF064060),
                ),
              ),
              Spacer(),
              ExpansesDropwDown()
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          AllExpensesItemRow(),
        ],
      ),
    );
  }
}
