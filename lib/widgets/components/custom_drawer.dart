import 'package:admin_dashboard/widgets/components/profile_picture_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

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
