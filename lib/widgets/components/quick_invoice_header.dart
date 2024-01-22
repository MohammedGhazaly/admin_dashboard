import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Quick Invoice",
          style: AppStyles.textStyleSemiBold20.copyWith(
            color: const Color(0xFF064060),
          ),
        ),
        Container(
          width: 48,
          height: 48,
          decoration:
              BoxDecoration(color: Color(0xFFFAFAFA), shape: BoxShape.circle),
          child: Icon(
            Icons.add_outlined,
            color: Color(0xff4EB7F2),
          ),
        )
      ],
    );
  }
}
