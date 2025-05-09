import 'package:lottie/lottie.dart';

import 'home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 1),(){
      Navigator.push(context, MaterialPageRoute(builder: (_) => Homescreen()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Lottie.asset('animations/splashscreen.json'),
      ),
    );
  }
}
