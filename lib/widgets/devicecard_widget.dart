import 'package:flutter/material.dart';

class DeviceItem extends StatelessWidget {
  final String name;
  final bool status;
  final IconData icon;
  final String room;

  const DeviceItem({
    super.key,
    required this.name,
    required this.status,
    required this.icon,
    required this.room,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
            colors: [
              Color(0xFFFFFFFF), // white
              Color(0xFFE3F2FD), // light blue
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.all(16),
          leading: CircleAvatar(
            radius: 28,
            backgroundColor: status ? Colors.orangeAccent : Colors.grey[400],
            child: Icon(icon, color: Colors.white, size: 30),
          ),
          title: Text(
            name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          subtitle: Text("Location: $room"),
          trailing: Switch(value: status, onChanged: (_) {}),
        ),
      ),
    );
  }
}
