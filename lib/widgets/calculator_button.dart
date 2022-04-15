import 'package:flutter/material.dart';


class CalculatorButton extends StatelessWidget {
  final String value;

  const CalculatorButton({Key? key, required this.value}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(value);
  }
}