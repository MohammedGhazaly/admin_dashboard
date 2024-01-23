import 'package:admin_dashboard/widgets/components/all_expanses.dart';
import 'package:admin_dashboard/widgets/components/custom_drawer.dart';
import 'package:admin_dashboard/widgets/components/quick_invoice.dart';
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
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                AllExpanses(),
                SizedBox(
                  height: 24,
                ),
                QuickInvoice(),
                SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: SizedBox(),
        )
      ],
    );
  }
}
