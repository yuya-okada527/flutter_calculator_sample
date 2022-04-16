import 'package:flutter/material.dart';

Widget actionButton({required String label, required Function callback}) {
  return ElevatedButton(
    onPressed: () {
      callback();
    },
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
