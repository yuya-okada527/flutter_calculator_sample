import 'package:flutter/material.dart';
import 'package:flutter_calculator/utils/env_utils.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Center(
        child: Text("ENV_SAMPLE = " + EnvUtils.getEnv("ENV_SAMPLE")),
      ),
    );
  }
}