import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.isOutput,
  });

  final TextEditingController controller;
  final bool isOutput;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      readOnly: isOutput, // Make the output field read-only
      textAlign: TextAlign.right,
      style: TextStyle(
        fontSize: isOutput ? 40 : 34,
        fontWeight: isOutput ? FontWeight.bold : FontWeight.normal,
        color: Colors.white,
      ),
      decoration: const InputDecoration(
        border: InputBorder.none,
        //hintText: isOutput ? 'Result' : 'Enter expression',
        hintStyle: TextStyle(color: Colors.white54),
      ),
    );
  }
}
