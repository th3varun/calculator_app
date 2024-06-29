import 'package:calculator_app/constant/colors.dart';
import 'package:calculator_app/widgets/text_field.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final padding = EdgeInsets.symmetric(horizontal: 25, vertical: 30);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Center(child: Text("Calculator App")),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          CustomTextField(),
          Container(
            height: screenHeight * 0.6,
            width: double.infinity,
            padding: padding,
            decoration: BoxDecoration(color: AppColors.primaryColor),
          ),
        ],
      ),
    );
  }
}
