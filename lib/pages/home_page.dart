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
              children: <Widget>[
                CalculatorButton(value: "AC", onClick: () {}),
                CalculatorButton(value: "±", onClick: () {}),
                CalculatorButton(value: "%", onClick: () {}),
                CalculatorButton(value: "÷", onClick: () {})
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalculatorButton(value: "7", onClick: () {}),
                CalculatorButton(value: "8", onClick: () {}),
                CalculatorButton(value: "9", onClick: () {}),
                CalculatorButton(value: "×", onClick: () {})
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalculatorButton(value: "4", onClick: () {}),
                CalculatorButton(value: "5", onClick: () {}),
                CalculatorButton(value: "6", onClick: () {}),
                CalculatorButton(value: "-", onClick: () {})
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalculatorButton(value: "1", onClick: () {}),
                CalculatorButton(value: "2", onClick: () {}),
                CalculatorButton(value: "3", onClick: () {}),
                CalculatorButton(value: "+", onClick: () {})
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalculatorButton(value: "0", onClick: () {}),
                CalculatorButton(value: ".", onClick: () {}),
                CalculatorButton(value: "=", onClick: () {})
              ],
            ),
          ],
        ),
      ),
    );
  }
}
