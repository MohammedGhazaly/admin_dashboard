import 'package:admin_dashboard/widgets/layout/adaptive_layout.dart';
import 'package:admin_dashboard/widgets/layout/desktop_layout.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayoutWidget(
          mobileLayout: (context) => SizedBox(),
          tabletLayout: (context) => SizedBox(),
          desktopLayout: (context) => DesktopLayout()),
    );
  }
}
