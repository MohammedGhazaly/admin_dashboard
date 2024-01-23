import 'package:admin_dashboard/widgets/components/all_expanses.dart';
import 'package:admin_dashboard/widgets/components/quick_invoice.dart';
import 'package:flutter/material.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
