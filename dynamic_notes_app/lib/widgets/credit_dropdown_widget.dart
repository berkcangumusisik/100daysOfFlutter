import 'package:dynamic_notes_app/constants/app_constant.dart';
import 'package:dynamic_notes_app/helper/data_helper.dart';
import 'package:flutter/material.dart';

class CreditDropdownWidget extends StatefulWidget {
  final Function onCreditSelected;
  const CreditDropdownWidget({super.key, required this.onCreditSelected});

  @override
  State<CreditDropdownWidget> createState() => _CreditDropdownWidgetState();
}

class _CreditDropdownWidgetState extends State<CreditDropdownWidget> {
  double selectedCredit = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Consts.padding,
      decoration: BoxDecoration(
        color: Consts.primaryColor.shade100.withOpacity(0.3),
        borderRadius: Consts.borderRadius,
      ),
      child: DropdownButton(
        items: DataHelper.getAllCredits(),
        underline: Container(),
        value: selectedCredit,
        onChanged: (value) {
          setState(() {
            selectedCredit = value?.toDouble() ?? 4;
            widget.onCreditSelected(selectedCredit);
          });
        },
      ),
    );
  }
}
