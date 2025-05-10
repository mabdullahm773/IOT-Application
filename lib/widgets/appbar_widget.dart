import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String Title;
  final bool BackButton;
  const CustomAppBar({super.key, required this.Title, required this.BackButton});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 6,
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 50, 16, 20),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.blueAccent,
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
                : SizedBox(),
            Text(
              '$Title',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person, color: Colors.blueAccent),
            ),
          ],
        ),
      ),
    );
  }
}