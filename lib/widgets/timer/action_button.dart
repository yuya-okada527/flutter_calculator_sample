import 'package:flutter/material.dart';

Widget actionButton({required String label}) {
  return ElevatedButton(
    onPressed: () {},
    child: Text(label),
    style: ElevatedButton.styleFrom(
      primary: Colors.black12,
      shape: const CircleBorder(),
      fixedSize: const Size(120, 120),
    ),
  );
}
