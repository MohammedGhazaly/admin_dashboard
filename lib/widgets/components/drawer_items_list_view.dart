import 'package:admin_dashboard/models/drawer_item_model.dart';
import 'package:admin_dashboard/utils/app_assets.dart';
import 'package:admin_dashboard/widgets/components/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawrItemsListView extends StatefulWidget {
  const DrawrItemsListView({
    super.key,
  });

  @override
  State<DrawrItemsListView> createState() => _DrawrItemsListViewState();
}

class _DrawrItemsListViewState extends State<DrawrItemsListView> {
  final List<DrawerItemModel> drawerItems = const [
    DrawerItemModel(title: "Dashboard", image: Assets.imagesCategory),
    DrawerItemModel(title: "My Transaction", image: Assets.imagesTransactions),
    DrawerItemModel(title: "Statistics", image: Assets.imagesStatistics),
    DrawerItemModel(title: "Wallet Account", image: Assets.imagesWallet),
    DrawerItemModel(title: "My Investments", image: Assets.imagesInvestments),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      // shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),

      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 10),
          child: InkWell(
            onTap: () {
              if (selectedIndex != index) {
                selectedIndex = index;
                setState(() {});
              }
            },
            child: DrawerItem(
              drawerItemModel: drawerItems[index],
              isActive: selectedIndex == index,
            ),
          ),
        );
      },
    );
  }
}
