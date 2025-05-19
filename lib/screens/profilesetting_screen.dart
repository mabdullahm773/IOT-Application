import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iot_app/screens/login_screen.dart';

import '../widgets/appbar_widget.dart';

class ProfileSettingsScreen extends StatelessWidget {
  const ProfileSettingsScreen({super.key});

  void _handleChangePassword() {
    // TODO: Add change password logic here
    print("Change Password tapped");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F3F6),
      body: Column(
        children: [
          CustomAppBar(Title: "IoT Devices", BackButton: true, ProfileIcon: false,),
          Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              children: [
                // Large Profile Icon
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[50],
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.person,
                    size: 80,
                    color: Colors.deepPurple,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'John Doe',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  '@johndoe',
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade100),
                ),
                SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: _handleChangePassword,
                    icon: Icon(Icons.lock, color: Colors.white,),
                    label: Text('Change Password', style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        child: Icon(Icons.logout, color: Colors.white,),
        onPressed: () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => LoginScreen()))),
    );
  }
}
