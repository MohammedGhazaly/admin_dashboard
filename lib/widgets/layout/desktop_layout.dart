import 'package:admin_dashboard/widgets/components/all_expenses_and_quick_invoice_section.dart';
import 'package:admin_dashboard/widgets/components/custom_drawer.dart';
import 'package:admin_dashboard/widgets/components/my_card.dart';
import 'package:admin_dashboard/widgets/components/my_cards_page_view.dart';
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
          flex: 1,
          child: MyCardsPageView(),
        )
      ],
    );
  }
}
