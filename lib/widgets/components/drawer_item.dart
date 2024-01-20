import 'package:admin_dashboard/models/drawer_item_model.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerItem extends StatelessWidget {
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      trailing: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: 0,
        color: Colors.transparent,
      ),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.textStyleRegular16,
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      trailing: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: 3,
        color: const Color(0xFF4EB7F2),
      ),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.textStyleSemiBold16.copyWith(
          color: const Color(0xFF4EB7F2),
        ),
      ),
    );
  }
}
