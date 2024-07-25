import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier {
  final inputController = TextEditingController();
  final outputController = TextEditingController();

  setValue(String value) {
    String str = inputController.text;

    switch (value) {
      case "C":
        inputController.text = str.substring(0, str.length - 1);
        break;
      case "AC":
        inputController.clear();
        outputController.clear();
        break;
      case "X":
        inputController.text += "*";
        break;
      case "=":
        compute();
        break;
      default:
        inputController.text += value;
    }
    inputController.selection = TextSelection.fromPosition(
        TextPosition(offset: inputController.text.length));
  }

  compute() {
    String text = inputController.text;
    num result = text.interpret();
    if (result == result.toInt()) {
      // Check if the result is a whole number
      outputController.text = result.toInt().toString();
    } else {
      outputController.text = result.toString();
    }
  }

  @override
  void dispose() {
    super.dispose();
    inputController.dispose();
    outputController.dispose();
  }
}
