import 'package:flutter/material.dart';
import 'package:uhcdesa/configs/colors.dart';

class AdminDashboardScreen extends StatefulWidget {
  const AdminDashboardScreen({super.key});

  @override
  State<AdminDashboardScreen> createState() => _AdminDashboardScreenState();
}

class _AdminDashboardScreenState extends State<AdminDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: AppBar(
        backgroundColor: AppColors.secondary,
        title: const Text(
          'D A S H B O A R D',
          style: TextStyle(color: Color.fromRGBO(96, 64, 131, 1)),
        ),
        actions: const [
          Icon(
            Icons.notifications,
            color: AppColors.primary,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.person,
            color: AppColors.primary,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
          padding: EdgeInsets.all(8),
          child: GridView.count(
            crossAxisCount: (width > 600) ? 4 : 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: [
              Card(),
              Card(),
              Card(),
              Card(),
            ],
          )),
    );
  }
}
