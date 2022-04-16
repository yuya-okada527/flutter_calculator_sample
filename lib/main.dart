import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const SevenToolsApp());
}

class SevenToolsApp extends StatelessWidget {
  const SevenToolsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seven Tools App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
