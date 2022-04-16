import 'package:flutter/material.dart';
import 'package:flutter_calculator/utils/expression_utils.dart';
import 'package:flutter_calculator/widgets/calculator/calculator_button.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _expression = "";

  void _calculate() {
    if (_expression.isEmpty) {
      return;
    }
    setState(() {
      _expression = ExpressionUtils.eval(_expression);
    });
  }

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
            Text(
              _expression,
              style: const TextStyle(
                fontSize: 32,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalculatorButton(
                  value: "AC",
                  onClick: () {
                    setState(() {
                      _expression = "";
                    });
                  },
                  color: Colors.black26,
                  isWide: false,
                ),
                CalculatorButton(
                  value: "±",
                  onClick: () {
                    setState(() {
                      _expression += "-";
                    });
                  },
                  color: Colors.black26,
                  isWide: false,
                ),
                CalculatorButton(
                  value: "%",
                  onClick: () {
                    setState(() {
                      _expression += " % ";
                    });
                  },
                  color: Colors.black26,
                  isWide: false,
                ),
                CalculatorButton(
                  value: "÷",
                  onClick: () {
                    setState(() {
                      _expression += " ÷ ";
                    });
                  },
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
                  onClick: () {
                    setState(() {
                      _expression += "7";
                    });
                  },
                  color: Colors.blue,
                  isWide: false,
                ),
                CalculatorButton(
                  value: "8",
                  onClick: () {
                    setState(() {
                      _expression += "8";
                    });
                  },
                  color: Colors.blue,
                  isWide: false,
                ),
                CalculatorButton(
                  value: "9",
                  onClick: () {
                    setState(() {
                      _expression += "9";
                    });
                  },
                  color: Colors.blue,
                  isWide: false,
                ),
                CalculatorButton(
                  value: "×",
                  onClick: () {
                    setState(() {
                      _expression += " × ";
                    });
                  },
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
                  onClick: () {
                    setState(() {
                      _expression += "4";
                    });
                  },
                  color: Colors.blue,
                  isWide: false,
                ),
                CalculatorButton(
                  value: "5",
                  onClick: () {
                    setState(() {
                      _expression += "5";
                    });
                  },
                  color: Colors.blue,
                  isWide: false,
                ),
                CalculatorButton(
                  value: "6",
                  onClick: () {
                    setState(() {
                      _expression += "6";
                    });
                  },
                  color: Colors.blue,
                  isWide: false,
                ),
                CalculatorButton(
                  value: "-",
                  onClick: () {
                    setState(() {
                      _expression += " - ";
                    });
                  },
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
                  onClick: () {
                    setState(() {
                      _expression += "1";
                    });
                  },
                  color: Colors.blue,
                  isWide: false,
                ),
                CalculatorButton(
                  value: "2",
                  onClick: () {
                    setState(() {
                      _expression += "2";
                    });
                  },
                  color: Colors.blue,
                  isWide: false,
                ),
                CalculatorButton(
                  value: "3",
                  onClick: () {
                    setState(() {
                      _expression += "3";
                    });
                  },
                  color: Colors.blue,
                  isWide: false,
                ),
                CalculatorButton(
                  value: "+",
                  onClick: () {
                    setState(() {
                      _expression += " + ";
                    });
                  },
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
                  onClick: () {
                    setState(() {
                      _expression += "0";
                    });
                  },
                  color: Colors.blue,
                  isWide: true,
                ),
                CalculatorButton(
                  value: ".",
                  onClick: () {
                    setState(() {
                      _expression += ".";
                    });
                  },
                  color: Colors.blue,
                  isWide: false,
                ),
                CalculatorButton(
                  value: "=",
                  onClick: () async {
                    try {
                      _calculate();
                    } catch (e) {
                      // ignore: avoid_print
                      print(e);
                      await showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text("計算式を評価できません"),
                            content: const Text("改めて計算式を入力してください。"),
                            actions: <Widget>[
                              ElevatedButton(
                                onPressed: () {
                                  return Navigator.of(context).pop();
                                },
                                child: const Text("確認"),
                              )
                            ],
                          );
                        },
                      );
                      setState(() {
                        _expression = "";
                      });
                    }
                  },
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
