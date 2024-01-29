import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/widgets/components/custom_dot.dart';
import 'package:admin_dashboard/widgets/components/my_cards_page_view.dart';
import 'package:flutter/material.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // SizedBox(
        //   height: 24,
        // ),
        Text(
          "My card",
          style: AppStyles.textStyleSemiBold20
              .copyWith(color: const Color(0xff064061)),
        ),
        SizedBox(
          height: 16,
        ),
        MyCardsPageView(pageController: pageController),
        SizedBox(
          height: 8,
        ),
        DotsIndicators(
          currentPage: currentPage,
        )
      ],
    );
  }
}
