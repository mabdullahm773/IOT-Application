import 'package:flutter/material.dart';
import 'package:iot/core/utils/screen_config.dart';

class LoginBottomSheet extends StatefulWidget {
  const LoginBottomSheet({super.key});

  @override
  State<LoginBottomSheet> createState() => _LoginBottomSheetState();
}

class _LoginBottomSheetState extends State<LoginBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenConfig.screenWidth * 0.9,
      height: ScreenConfig.screenHeight * 1.5,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text("LOGIN", style: TextStyle(fontSize: 20),),
            TextField(
              ,
            ),
            TextField(),
          ],
        ),
      ),
    );
  }
}

class SignupBottomSheet extends StatefulWidget {
  const SignupBottomSheet({super.key});

  @override
  State<SignupBottomSheet> createState() => _SignupBottomSheetState();
}

class _SignupBottomSheetState extends State<SignupBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

