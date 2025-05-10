import 'package:flutter/material.dart';
import 'package:iot_app/screens/home_screen.dart';
import 'package:iot_app/screens/login_screen.dart';
import 'package:iot_app/screens/setting_screen.dart';
import 'package:iot_app/screens/splash_screen.dart';
import 'package:iot_app/services/themeprovider_service.dart';
import 'package:provider/provider.dart';

void main(){
  ChangeNotifierProvider(
    create: (_) => ThemeProvider(),
    child: MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    //final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // themeMode: themeProvider.themeMode,
      // theme: ThemeData(
      //   brightness: Brightness.light,
      //   primarySwatch: Colors.blue,
      //   scaffoldBackgroundColor: Colors.white,
      // ),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      //   primarySwatch: Colors.deepPurple,
      //   scaffoldBackgroundColor: Colors.black,
      // ),
      home: SettingScreen(),
    );
  }
}
