import 'package:admin_dashboard/widgets/components/drawer_items_list_view.dart';
import 'package:admin_dashboard/widgets/components/profile_picture_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          ProfilePictureListTile(
            name: "Lekan Okeowo",
            email: "demo@gmail.com",
          ),
          DrawrItemsListView()
        ],
      ),
    );
  }
}
