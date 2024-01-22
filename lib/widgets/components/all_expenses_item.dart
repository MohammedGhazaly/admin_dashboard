import 'package:admin_dashboard/models/all_expenses_item_model.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel allExpensesItemModel;
  const AllExpensesItem({super.key, required this.allExpensesItemModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Color(0xFFF1F1F1),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                padding: EdgeInsets.all(8),
                decoration: ShapeDecoration(
                  color: Color(0xFFFAFAFA),
                  shape: OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    allExpensesItemModel.image,
                  ),
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios,
                color: Color(0xff064061),
              )
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            allExpensesItemModel.title,
            style: AppStyles.textStyleSemiBold16.copyWith(
              color: const Color(0xff064061),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.textStyleSemiBold14.copyWith(
              color: const Color(0xFFAAAAAA),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpensesItemModel.price,
            style: AppStyles.textStyleSemiBold24.copyWith(
              color: const Color(0xff4EB7F2),
            ),
          )
        ],
      ),
    );
  }
}
