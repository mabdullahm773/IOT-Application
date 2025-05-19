import 'package:flutter/material.dart';
import 'package:iot_app/widgets/devicecard_widget.dart';
import '../widgets/appbar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> devices = [
    {
      'name': 'Smart Bulb',
      'status': true,
      'icon': Icons.lightbulb_outline,
      'room': 'Living Room',
    },
    {
      'name': 'Smart Fan',
      'status': false,
      'icon': Icons.toys,
      'room': 'Bedroom',
    },
    {
      'name': 'AC Controller',
      'status': true,
      'icon': Icons.ac_unit,
      'room': 'Office',
    },
    {
      'name': 'Security Camera',
      'status': true,
      'icon': Icons.videocam,
      'room': 'Outdoor',
    },
  ];

  void toggleStatus(int index) {
    setState(() {
      devices[index]['status'] = !devices[index]['status'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F3F6),
      body: Column(
        children: [
          CustomAppBar(Title: "IoT Devices", BackButton: false, ProfileIcon: true,),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: devices.length,
              itemBuilder: (context, index) {
                final device = devices[index];
                return DeviceItem(
                  name: device['name'],
                  status: device['status'],
                  icon: device['icon'],
                  room: device['room'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
