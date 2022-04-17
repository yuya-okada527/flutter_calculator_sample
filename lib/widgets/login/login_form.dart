import 'package:flutter/material.dart';
import 'package:flutter_calculator/widgets/login/text_form.dart';

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
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          textForm("Email", (String value) {
            setState(() {
              _email = value;
            });
          }),
          textForm("Password", (String value) {
            setState(() {
              _password = value;
            });
          }),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              child: const Text("ログイン"),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
