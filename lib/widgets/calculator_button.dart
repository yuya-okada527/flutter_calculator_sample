import 'package:flutter/material.dart';


class CalculatorButton extends StatelessWidget {
  final String value;
  final Function onClick;

  // ignore: prefer_const_constructors_in_immutables
  CalculatorButton({Key? key, required this.value, required this.onClick}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(value),
      onPressed: () {
        onClick();
      },
    );
  }
}