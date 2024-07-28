import 'package:calculator_app/Provider/cal_provider.dart';
import 'package:calculator_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const CalaculatorApp());
}

class CalaculatorApp extends StatefulWidget {
  const CalaculatorApp({super.key});

  @override
  State<CalaculatorApp> createState() => _CalaculatorAppState();
}

class _CalaculatorAppState extends State<CalaculatorApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculatorProvider(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
        //Checking if updated!
      ),
    );
  }
}
