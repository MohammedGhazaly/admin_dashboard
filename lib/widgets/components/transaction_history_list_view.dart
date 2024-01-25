import 'package:admin_dashboard/models/transaction_history_model.dart';
import 'package:admin_dashboard/widgets/components/transaction_item.dart';
import 'package:flutter/material.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const List<TransactionModel> items = [
    TransactionModel(
        name: "Cash Withdrawal",
        date: "13 Apr, 2022 ",
        amount: "20,129",
        isWithdrawl: true),
    TransactionModel(
        name: "Landing Page project",
        date: "13 Apr, 2022 ",
        amount: "2,000",
        isWithdrawl: false),
    TransactionModel(
        name: "Juni Mobile App project",
        date: "13 Apr, 2022 ",
        amount: "20,129",
        isWithdrawl: false),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return TransactionItem(transactionModel: items[index]);
      },
      shrinkWrap: true,
    );
  }
}
