import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Login"),
          Text.rich(
              TextSpan(
                  children: [
                    TextSpan(
                        text: 'Welcome to'
                    ),
                    TextSpan(
                        text: ''
                    )
                  ]
              )
          )
        ],
      ),
    );
  }
}
