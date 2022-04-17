import 'package:flutter/material.dart';

Widget countDownIndicator(int sec) {
  return SizedBox(
    width: 200,
    height: 200,
    child: TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0, end: 1),
      duration: Duration(seconds: sec),
      builder: (context, value, _) {
        return CircularProgressIndicator(
          value: value,
          strokeWidth: 8,
        );
      },
    ),
  );
}
