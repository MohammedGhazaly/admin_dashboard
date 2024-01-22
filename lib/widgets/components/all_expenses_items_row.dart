import 'package:admin_dashboard/models/all_expenses_item_model.dart';
import 'package:admin_dashboard/utils/app_assets.dart';
import 'package:admin_dashboard/widgets/components/all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItemRow extends StatelessWidget {
  const AllExpensesItemRow({super.key});
  static const List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      date: "April 2022",
      price: r"$20,129",
      title: "Balance",
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      date: "April 2022",
      price: r"$20,129",
      title: "Income",
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpanses,
      date: "April 2022",
      price: r"$20,129",
      title: "Expenses",
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpensesItem(allExpensesItemModel: item),
            ),
          );
        } else {
          return Expanded(child: AllExpensesItem(allExpensesItemModel: item));
        }
      }).toList(),
    );
    //   children: items
    //       .map((e) => Expanded(
    //               child: Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 6),
    //             child: AllExpensesItem(allExpensesItemModel: e),
    //           )))
    //       .toList(),
    // );
    // ListView.builder(
    //     itemCount: items.length,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) {
    //       return AllExpensesItem(
    //         allExpensesItemModel: items[index],
    //       );
    //     });
  }
}
