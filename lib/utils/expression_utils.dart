import 'package:expressions/expressions.dart';

class ExpressionUtils {
  static String eval(String expressionStr) {
    var expression = Expression.parse(_convert(expressionStr));
    var evaluator = const ExpressionEvaluator();
    var answer = evaluator.eval(expression, {});
    return answer.toString();
  }

  static String _convert(String expressionStr) {
    var result = expressionStr.replaceAll("×", "*");
    result = result.replaceAll("÷", "/");
    return result;
  }
}
