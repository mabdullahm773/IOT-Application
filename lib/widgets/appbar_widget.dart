import 'package:flutter/material.dart';
import 'package:iot_app/screens/profilesetting_screen.dart';

class CustomAppBar extends StatelessWidget {
  final String Title;
  final bool BackButton;
  final bool ProfileIcon;
  const CustomAppBar({super.key, required this.Title, required this.BackButton, required this.ProfileIcon});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 6,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(16, 50, 16, 20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BackButton
                ? IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back))
                : SizedBox(width: 42,),
            Text(
              '$Title',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            ProfileIcon
              ? GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ProfileSettingsScreen())),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, color: Colors.deepPurple,),
                  ),
              )
              : SizedBox(width: 44,),
          ],
        ),
      ),
    );
  }
}