import 'package:admin_dashboard/models/income_detail_model.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    IncomeDetailModel(
        color: Color(0xFF208BC7), title: "Design service", value: 40),
    IncomeDetailModel(
        color: Color(0xFF4DB7F2), title: "Design product", value: 25),
    IncomeDetailModel(
        color: Color(0xFF064060), title: "Product royalti", value: 20),
    IncomeDetailModel(color: Color(0xFFE2DECD), title: "Other", value: 22),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: items[index].color,
            ),
          ),
          title: Text(
            items[index].title,
            style: AppStyles.textStyleRegular16.copyWith(
              color: const Color(0xFF064060),
            ),
          ),
          trailing: Text(
            "${items[index].value}%",
            style: AppStyles.textStyleSemiBold16.copyWith(
              color: const Color(0xFF208CC8),
            ),
          ),
        );
      },
    );
  }
}
