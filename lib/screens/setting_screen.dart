import 'package:flutter/material.dart';
import 'package:iot_app/widgets/appbar_widget.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isDarkTheme = false;

  void toggleTheme(bool value) {
    setState(() {
      isDarkTheme = value;
      print("Theme CHanged");
    });
    // You can add actual theme logic here using Provider or GetX
  }

  void showAppManual() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('App Manual'),
        content: const SingleChildScrollView(
          child: Text(
            'This app allows you to manage your account, control theme settings, and more.\n\n'
                '- Toggle between Light and Dark modes.\n'
                '- Update your password securely.\n'
                '- For more help, contact support@example.com',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(Title: "Settings", BackButton: true,),
          SizedBox(height: 20,),
          SwitchListTile(
            title: const Text('Dark Theme', style: TextStyle(fontSize: 18),),
            value: isDarkTheme,
            onChanged: toggleTheme,
            secondary: const Icon(Icons.brightness_6, size: 26,),
          ),
          Container(
            height: 1.8,
            color: Colors.grey.withOpacity(0.3),
            margin: EdgeInsets.symmetric(horizontal: 20),
          ),
          ListTile(
            leading: const Icon(Icons.lock, size: 26,),
            title: const Text('Change Password', style: TextStyle(fontSize: 18),),
            onTap: (){},
          ),
          Container(
            height: 1.8,
            color: Colors.grey.withOpacity(0.3),
            margin: EdgeInsets.symmetric(horizontal: 20,),
          ),
          ListTile(
            leading: const Icon(Icons.info_outline, size: 26,),
            title: const Text('App Manual', style: TextStyle(fontSize: 18),),
            onTap: showAppManual,
          ),
        ],
      ),
    );;
  }
}
