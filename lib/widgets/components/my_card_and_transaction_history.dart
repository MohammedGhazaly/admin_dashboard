import 'package:admin_dashboard/widgets/components/my_cards_section.dart';
import 'package:admin_dashboard/widgets/components/transaction_history.dart';
import 'package:flutter/material.dart';

class MyCardAndTransactionHistory extends StatelessWidget {
  const MyCardAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          MyCardsSection(),
          SizedBox(
            height: 40,
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
