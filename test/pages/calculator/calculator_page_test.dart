
import 'package:flutter/material.dart';
import 'package:flutter_calculator/pages/calculator/calculator_page.dart';
import 'package:flutter_calculator/widgets/calculator/calculator_button.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("CalculatorPage", (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Calculator(),
    ));

    // アイコンが10+2を計算
    await tester.tap(find.widgetWithText(CalculatorButton, "1"));
    await tester.tap(find.widgetWithText(CalculatorButton, "0"));
    await tester.tap(find.widgetWithText(CalculatorButton, "+"));
    await tester.tap(find.widgetWithText(CalculatorButton, "2"));
    await tester.tap(find.widgetWithText(CalculatorButton, "="));

    // Widgetツリーの再構築
    await tester.pump();

    expect(find.text('12'), findsOneWidget);
  });
}