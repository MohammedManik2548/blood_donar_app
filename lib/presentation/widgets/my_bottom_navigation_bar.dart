import 'package:blood_donation_app/presentation/colors/app_color.dart';
import 'package:blood_donation_app/presentation/controllers/Bottom_Navigation_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBottomNavigationBar extends GetView<MyBottomNavBarController> {
  final _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 5,
      currentIndex: _currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
          backgroundColor: AppColors.bloodColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: "Post",
          backgroundColor: AppColors.bloodColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "Settings",
          backgroundColor: AppColors.bloodColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile",
          backgroundColor: AppColors.bloodColor,
        ),
      ],
      onTap: (index) {},
    );
  }
}
