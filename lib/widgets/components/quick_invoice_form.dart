import 'package:admin_dashboard/widgets/components/custom_text_field_with_title.dart';
import 'package:flutter/material.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomTextFieldWithTitle(
                  titleName: "Customer Name",
                  hintText: "Type customer name",
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: CustomTextFieldWithTitle(
                  titleName: "Customer Email",
                  hintText: "Type customer email",
                ),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                child: CustomTextFieldWithTitle(
                  titleName: "Item Name",
                  hintText: "Type item name",
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: CustomTextFieldWithTitle(
                  titleName: "Item amount",
                  hintText: "USD",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
