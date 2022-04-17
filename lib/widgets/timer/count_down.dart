import 'package:flutter/material.dart';

Widget countDown(int seconds) {
  return Text(
    convert(seconds),
    style: const TextStyle(fontSize: 42),
  );
}

String convert(int seconds) {
  int hours = seconds ~/ 3600;
  int minutes = (seconds % 3600) ~/ 60;
  seconds = seconds % 60;
  if (hours != 0) {
    return "$hours:$minutes:$seconds";
  }
  if (minutes != 0) {
    return "$minutes:$seconds";
  }
  return "$seconds";
}