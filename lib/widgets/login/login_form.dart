import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String _email = "";
  String _password = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextFormField(
          decoration: const InputDecoration(labelText: "Email"),
          onChanged: (String value) {
            setState(() {
              _email = value;
            });
          },
        ),
        TextFormField(
          decoration: const InputDecoration(labelText: "Password"),
          onChanged: (String value) {
            setState(() {
              _password = value;
            });
          },
        ),
      ],
    );
  }
}
