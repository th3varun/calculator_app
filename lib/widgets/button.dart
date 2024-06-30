import 'package:calculator_app/Provider/cal_provider.dart';
import 'package:calculator_app/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Button1 extends StatelessWidget {
  const Button1(
      {super.key, required this.label, this.textColor = Colors.white});

  final String label;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Provider.of<CalculatorProvider>(context, listen: false)
          .setValue(label),
      child: Material(
        elevation: 2,
        color: AppColors.secondary2Color,
        borderRadius: BorderRadius.circular(15),
        child: CircleAvatar(
          radius: 40,
          backgroundColor: AppColors.secondary2Color,
          child: Text(
            label,
            style: TextStyle(
                color: textColor, fontSize: 25, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
