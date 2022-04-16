import 'package:flutter/material.dart';

Widget actionButton({required String label}) {
  return ElevatedButton(
    onPressed: () {},
    child: Text(
      label,
      softWrap: false,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    style: ElevatedButton.styleFrom(
      primary: Colors.black26,
      shape: const CircleBorder(),
      fixedSize: const Size(104, 104),
    ),
  );
}
