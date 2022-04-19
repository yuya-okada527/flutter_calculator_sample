import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';

class ExpressionUtils {
  static String eval(String expressionStr) {
    String expression = _convert(expressionStr);
    expression = evalMultiplyOrDevide(expression);
    return evalAdditionOrSubtraction(expression);
  }

  static String _convert(String expressionStr) {
    var result = expressionStr.replaceAll("×", "*");
    result = result.replaceAll("÷", "/");
    result = result.trim();
    result = result.replaceAll("%", "* 0.01");
    // ignore: avoid_print
    print("expression: '$result'");
    return result;
  }

  @visibleForTesting
  static String evalAdditionOrSubtraction(String expression) {
    if (!_hasAddtionOrSubtraction(expression)) {
      return expression;
    }
    List<String> tokens = expression.split(" ");
    int index = tokens.indexWhere((token) => ["+", "-"].contains(token));
    if (index == -1) {
      return expression;
    }
    if (index == 0 || index == tokens.length - 1) {
      throw Exception("math expression is invalid");
    }
    var num = _calc(tokens[index - 1], tokens[index + 1], tokens[index]);
    List<String> nextTokens = tokens.sublist(0, index - 1) +
        [num.toString()] +
        tokens.sublist(index + 2);
    return evalAdditionOrSubtraction(nextTokens.join(" "));
  }

  @visibleForTesting
  static String evalMultiplyOrDevide(String expression) {
    if (!_hasMultiplierOrDevider(expression)) {
      return expression;
    }
    List<String> tokens = expression.split(" ");
    int index = tokens.indexWhere((token) => ["*", "/"].contains(token));
    if (index == -1) {
      return expression;
    }
    if (index == 0 || index == tokens.length - 1) {
      throw Exception("math expression is invalid");
    }
    var num = _calc(tokens[index - 1], tokens[index + 1], tokens[index]);
    List<String> nextTokens = tokens.sublist(0, index - 1) +
        [num.toString()] +
        tokens.sublist(index + 2);
    return evalMultiplyOrDevide(nextTokens.join(" "));
  }

  static dynamic _calc(right, left, operator) {
    switch (operator) {
      case "+":
        return Decimal.parse(right) + Decimal.parse(left);
      case "-":
        return Decimal.parse(right) - Decimal.parse(left);
      case "*":
        return Decimal.parse(right) * Decimal.parse(left);
      case "/":
        return Decimal.parse(right) / Decimal.parse(left);
      default:
        throw Exception("$operator is not supported");
    }
  }

  static bool _hasMultiplierOrDevider(String expression) {
    return expression.contains("*") || expression.contains("/");
  }

  static bool _hasAddtionOrSubtraction(String expression) {
    return expression.contains("+") || expression.contains("-");
  }
}
