import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/widgets/components/transaction_history_list_view.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Transaction History",
              style: AppStyles.textStyleSemiBold20.copyWith(
                color: const Color(0xff064061),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "View All",
                style: AppStyles.textStyleMedium16
                    .copyWith(color: const Color(0xff4EB7F2)),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "13 April 2022",
          style: AppStyles.textStyleMedium16.copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        TransactionHistoryListView()
      ],
    );
  }
}
