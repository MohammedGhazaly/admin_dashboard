import 'package:admin_dashboard/models/all_expenses_item_model.dart';
import 'package:admin_dashboard/utils/app_assets.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/widgets/components/all_expenses_item.dart';
import 'package:admin_dashboard/widgets/components/all_expenses_items_row.dart';
import 'package:admin_dashboard/widgets/components/custom_drawer.dart';
import 'package:admin_dashboard/widgets/components/expanses_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_svg/svg.dart';

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
            child: Column(
              children: [
                Expanded(
                  child: AllExpanses(),
                ),
              ],
            ))
      ],
    );
  }
}

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
