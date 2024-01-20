import 'package:admin_dashboard/models/drawer_item_model.dart';
import 'package:admin_dashboard/utils/app_assets.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/widgets/components/profile_picture_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static const List<DrawerItemModel> drawerItems = [
    DrawerItemModel(title: "Dashboard", image: Assets.imagesCategory),
    DrawerItemModel(title: "My Transaction", image: Assets.imagesTransactions),
    DrawerItemModel(title: "Statistics", image: Assets.imagesStatistics),
    DrawerItemModel(title: "Wallet Account", image: Assets.imagesWallet),
    DrawerItemModel(title: "My Investments", image: Assets.imagesInvestments),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          ProfilePictureListTile(name: "Lekan Okeowo", email: "demo@gmail.com"),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final DrawerItemModel drawerItemModel;
  const DrawerItem({super.key, required this.drawerItemModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.textStyleRegular16,
      ),
    );
  }
}
