import "package:flutter/material.dart";
import "package:iot/core/utils/screen_config.dart";
import "features/presentations/login_screen.dart";
import 'package:firebase_core/firebase_core.dart';
import "firebase_options.dart";



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    ScreenConfig.init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}


