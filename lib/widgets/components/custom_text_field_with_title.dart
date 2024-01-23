import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFieldWithTitle extends StatelessWidget {
  final String titleName, hintText;

  const CustomTextFieldWithTitle(
      {super.key, required this.titleName, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleName,
          style: AppStyles.textStyleMedium16.copyWith(
            color: const Color(0xff064061),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: AppStyles.textStyleRegular16.copyWith(
              color: const Color(0xffAAAAAA),
            ),
            filled: true,
            fillColor: const Color(0xFFFAFAFA),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Color(0xff4EB7F2),
                width: 2,
              ),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ],
    );
  }
}
