import 'package:flutter/material.dart';
import 'package:flutter_calculator/pages/calculator/calculator_page.dart';
import 'package:flutter_calculator/widgets/calculator/calculator_button.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  for (var condition in [
    {
      "commands": ["1", "0", "+", "2", "="],
      "expected": ["12"]
    },
    {
      "commands": ["1", "0", "+", "2", "-", "1", "="],
      "expected": ["11"]
    },
    {
      "commands": ["1", "0", "×", "2", "="],
      "expected": ["20"]
    },
    {
      "commands": ["3", "0", "÷", "2", "="],
      "expected": ["15"]
    }
  ]) {
    testWidgets("CalculatorPage", (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: Calculator(),
      ));

      List<String> commands = condition["commands"] ?? [];
      for (var command in commands) {
        await tester.tap(find.widgetWithText(CalculatorButton, command));
      }

      // Widgetツリーの再構築
      await tester.pump();

      expect(find.text(condition["expected"]!.first), findsOneWidget);
    });
  }
}
