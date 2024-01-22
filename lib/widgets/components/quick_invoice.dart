import 'package:admin_dashboard/utils/app_styles.dart';
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
        children: [
          QuickInvoiceHeader(),
        ],
      ),
    );
  }
}
