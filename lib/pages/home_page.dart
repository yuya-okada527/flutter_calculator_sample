import 'package:flutter/material.dart';
import 'package:flutter_calculator/widgets/calculator_button.dart';


class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                CalculatorButton(value: "AC"),
                CalculatorButton(value: "±"),
                CalculatorButton(value: "%"),
                CalculatorButton(value: "÷")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                CalculatorButton(value: "7"),
                CalculatorButton(value: "8"),
                CalculatorButton(value: "9"),
                CalculatorButton(value: "×")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                CalculatorButton(value: "4"),
                CalculatorButton(value: "5"),
                CalculatorButton(value: "6"),
                CalculatorButton(value: "-")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                CalculatorButton(value: "1"),
                CalculatorButton(value: "2"),
                CalculatorButton(value: "3"),
                CalculatorButton(value: "+")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                CalculatorButton(value: "0"),
                CalculatorButton(value: "."),
                CalculatorButton(value: "=")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
