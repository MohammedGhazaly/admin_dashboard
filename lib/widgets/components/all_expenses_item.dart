import 'package:admin_dashboard/models/all_expenses_item_model.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;
  const AllExpensesItem(
      {super.key,
      required this.allExpensesItemModel,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
          color: isSelected == true ? const Color(0xff4EB7F2) : Colors.white,
          border: Border.all(
            color: isSelected == true
                ? Colors.transparent
                : const Color(0xFFF1F1F1),
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
                padding: const EdgeInsets.all(8),
                decoration: ShapeDecoration(
                  color: isSelected == true
                      ? Colors.white.withOpacity(0.1)
                      : const Color(0xFFFAFAFA),
                  shape: const OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    allExpensesItemModel.image,
                    color: isSelected == true ? Colors.white : null,
                  ),
                ),
              ),
              const Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                color:
                    isSelected == true ? Colors.white : const Color(0xff064061),
              )
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            allExpensesItemModel.title,
            style: AppStyles.textStyleSemiBold16.copyWith(
              color:
                  isSelected == true ? Colors.white : const Color(0xff064061),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.textStyleSemiBold14.copyWith(
              color:
                  isSelected == true ? Colors.white : const Color(0xFFAAAAAA),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpensesItemModel.price,
            style: AppStyles.textStyleSemiBold24.copyWith(
              color:
                  isSelected == true ? Colors.white : const Color(0xff4EB7F2),
            ),
          )
        ],
      ),
    );
  }
}
