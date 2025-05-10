import 'package:iot_app/screens/login_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:iot_app/services/screensize_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 2900),(){
      Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    screenSize(context);

    return Scaffold(
      body: SizedBox.expand(
        child: Transform.scale(
          scale: 1.4, // Adjust this value as needed
          child: Lottie.asset(
            'assets/animations/splashscreen.json',
            fit: BoxFit.cover,
          ),
        ),
      ),

    );
  }
}
