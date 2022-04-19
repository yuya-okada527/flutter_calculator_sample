import 'package:flutter_calculator/utils/expression_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("単純四則演算", () {
    test('1 + 1 = 2', () {
      expect(ExpressionUtils.eval("1 + 1"), "2");
    });

    test('3 - 2 = 1', () {
      expect(ExpressionUtils.eval("3 - 2"), "1");
    });

    test('3 * 2 = 6', () {
      expect(ExpressionUtils.eval("3 * 2"), "6");
    });

    test('4 / 2 = 2.0', () {
      expect(ExpressionUtils.eval("4 / 2"), "2.0");
    });

    test('10 % = 0.1', () {
      expect(ExpressionUtils.eval("10 % "), "0.1");
    });

    // ignore: todo
    // TODO: スペースがないと失敗する
    // test('10 % = 0.1', () {
    //   expect(ExpressionUtils.eval("10 %"), "0.1");
    // });
  });

  group("複雑四則演算", () {
    test("1 + 2 + 3 = 6(加減のみ)", () {
      expect(ExpressionUtils.eval("1 + 2 + 3"), "6");
    });

    test("1 * 2 + 3 = 5(乗除あり 順番通り)", () {
      expect(ExpressionUtils.eval("1 * 2 + 3"), "5");
    });

    test("1 + 4 / 2 = 3.0(乗除あり 順番通り)", () {
      expect(ExpressionUtils.eval("1 + 4 / 2"), "3.0");
    });
  });

  group("端数あり", () {
    test("1.1 + 2.3 = 3.4", () {
      expect(ExpressionUtils.eval("1.1 + 2.3"), "3.4");
    });

    // ignore: todo
    // TODO: 端数が出る場合はNG
    // test("0.2 * 3 = 0.6", () {
    //   expect(ExpressionUtils.eval("0.2 * 3"), "0.6");
    // });
  });
}
