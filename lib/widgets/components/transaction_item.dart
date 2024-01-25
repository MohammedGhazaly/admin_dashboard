import 'package:admin_dashboard/models/transaction_history_model.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionModel.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.textStyleSemiBold16
              .copyWith(color: const Color(0xFF064060)),
        ),
        subtitle: Text(
          transactionModel.date,
          style: AppStyles.textStyleRegular16
              .copyWith(color: const Color(0xFFAAAAAA)),
        ),
        trailing: Text(
          "\$${transactionModel.amount}",
          style: AppStyles.textStyleSemiBold20.copyWith(
              color: transactionModel.isWithdrawl == true
                  ? const Color(0xFFF3735E)
                  : const Color(0xFF7CD87A)),
        ),
      ),
    );
  }
}
