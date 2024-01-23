import 'package:admin_dashboard/widgets/components/latest_transaction_section.dart';
import 'package:admin_dashboard/widgets/components/quick_invoice_form.dart';
import 'package:admin_dashboard/widgets/components/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 24, right: 24, bottom: 24, top: 32),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 36,
          ),
          LatestTransactionSection(),
          Divider(height: 48),
          QuickInvoiceForm()
        ],
      ),
    );
  }
}
