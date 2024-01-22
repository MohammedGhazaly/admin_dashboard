import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ExpansesDropwDown extends StatefulWidget {
  const ExpansesDropwDown({super.key});

  @override
  State<ExpansesDropwDown> createState() => _ExpansesDropwDownState();
}

class _ExpansesDropwDownState extends State<ExpansesDropwDown> {
  String dropDownValue = "Daily";
  List<String> times = ["Daily", "Weekly", "Monthly", "Yearly"];
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(50),
      padding: EdgeInsets.symmetric(horizontal: 12),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        border: Border.all(
          width: 1,
          color: Color(0xFFF1F1F1),
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          style: AppStyles.textStyleMedium16.copyWith(
            color: const Color(0xFF064060),
          ),
          value: dropDownValue,
          // isExpanded: true,

          icon: Icon(
            Icons.expand_more,
            size: 32,
            color: Color(0xFF064060),
          ),
          items: times.map((e) {
            return DropdownMenuItem(
              child: Text(e),
              value: e,
            );
          }).toList(),
          onChanged: (newValue) {
            dropDownValue = newValue ?? dropDownValue;
            setState(() {});
          },
        ),
      ),
    );
  }
}
