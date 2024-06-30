import 'package:calculator_app/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
      child: TextField(
        controller: controller,
        decoration: const InputDecoration(
            border: InputBorder.none,
            fillColor: AppColors.primaryColor,
            filled: false),
        style: const TextStyle(fontSize: 45),
        readOnly: true,
        autofocus: true,
        showCursor: true,
      ),
    );
  }
}
