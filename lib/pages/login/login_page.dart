import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String _email = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(labelText: "Email"),
              onChanged: (String value) {
                setState(() {
                  _email = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}