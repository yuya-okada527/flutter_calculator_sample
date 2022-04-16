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
                CalculatorButton(
                  value: "AC",
                  onClick: () {},
                  color: Colors.black26,
                  isWide: false,
                ),
                CalculatorButton(
                  value: "±",
                  onClick: () {},
                  color: Colors.black26,
                  isWide: false,
                ),
                CalculatorButton(
                  value: "%",
                  onClick: () {},
                  color: Colors.black26,
                  isWide: false,
                ),
                CalculatorButton(
                  value: "÷",
                  onClick: () {},
                  color: Colors.orange,
                  isWide: false,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalculatorButton(
                  value: "7",
                  onClick: () {},
                  color: Colors.blue,
                  isWide: false,
                ),
                CalculatorButton(
                  value: "8",
                  onClick: () {},
                  color: Colors.blue,
                  isWide: false,
                ),
                CalculatorButton(
                  value: "9",
                  onClick: () {},
                  color: Colors.blue,
                  isWide: false,
                ),
                CalculatorButton(
                  value: "×",
                  onClick: () {},
                  color: Colors.orange,
                  isWide: false,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalculatorButton(
                  value: "4",
                  onClick: () {},
                  color: Colors.blue,
                  isWide: false,
                ),
                CalculatorButton(
                  value: "5",
                  onClick: () {},
                  color: Colors.blue,
                  isWide: false,
                ),
                CalculatorButton(
                  value: "6",
                  onClick: () {},
                  color: Colors.blue,
                  isWide: false,
                ),
                CalculatorButton(
                  value: "-",
                  onClick: () {},
                  color: Colors.orange,
                  isWide: false,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalculatorButton(
                  value: "1",
                  onClick: () {},
                  color: Colors.blue,
                  isWide: false,
                ),
                CalculatorButton(
                  value: "2",
                  onClick: () {},
                  color: Colors.blue,
                  isWide: false,
                ),
                CalculatorButton(
                  value: "3",
                  onClick: () {},
                  color: Colors.blue,
                  isWide: false,
                ),
                CalculatorButton(
                  value: "+",
                  onClick: () {},
                  color: Colors.orange,
                  isWide: false,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalculatorButton(
                  value: "0",
                  onClick: () {},
                  color: Colors.blue,
                  isWide: true,
                ),
                CalculatorButton(
                  value: ".",
                  onClick: () {},
                  color: Colors.blue,
                  isWide: false,
                ),
                CalculatorButton(
                  value: "=",
                  onClick: () {},
                  color: Colors.orange,
                  isWide: false,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
