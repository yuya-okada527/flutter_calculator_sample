import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String value;
  final Function onClick;
  final Color color;
  final bool isWide;

  const CalculatorButton(
      {Key? key,
      required this.value,
      required this.onClick,
      required this.color,
      required this.isWide})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        value,
        style: const TextStyle(
          fontSize: 22,
        ),
      ),
      // ignore: todo
      // TODO: refactor
      style: ElevatedButton.styleFrom(
        primary: color,
        shape: isWide ? const StadiumBorder() : const CircleBorder(),
        fixedSize: isWide ? const Size(160, 60) : const Size(60, 60),
      ),
      onPressed: () {
        onClick();
      },
    );
  }
}
