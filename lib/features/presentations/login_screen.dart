import 'package:flutter/material.dart';
import 'package:iot/core/utils/screen_config.dart';
import 'widgets/bottomsheet.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: ScreenConfig.screenHeight * 0.45),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: (){
                      showModalBottomSheet(
                          context: context,
                          builder: (context) => LoginBottomSheet(),
                      );
                    },
                    child: Text("Login", style: TextStyle(fontSize: 24),)
                ),
                SizedBox(width: ScreenConfig.screenWidth * 0.05),
                ElevatedButton(
                    onPressed: (){

                    },
                    child: Text("Signup", style: TextStyle(fontSize: 24),)
                ),
              ],
            ),
        ),
      ),
    );
  }
}
