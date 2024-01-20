import 'package:admin_dashboard/widgets/components/custom_drawer.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
      ],
    );
  }
}
