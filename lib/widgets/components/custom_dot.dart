import 'package:flutter/material.dart';

class DotsIndicators extends StatelessWidget {
  const DotsIndicators({super.key, required this.currentPage});
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) {
        return Padding(
          padding: const EdgeInsets.only(right: 6),
          child: CustomDot(isActive: currentPage == index),
        );
      }),
    );
  }
}

class CustomDot extends StatelessWidget {
  const CustomDot({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive == true ? 32 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive == true
            ? const Color(0xff4EB7F2)
            : const Color(0xFFE7E7E7),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
