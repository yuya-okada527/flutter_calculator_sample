import 'package:flutter/material.dart';

Widget textForm(String label, Function onChanged) {
  return TextFormField(
    decoration: InputDecoration(labelText: label),
    onChanged: (String value) {
      onChanged(value);
    },
  );
}
