import 'dart:ui';
import 'package:blood_donation_app/presentation/colors/app_color.dart';
import 'package:blood_donation_app/presentation/controllers/home_page_controller.dart';
import 'package:blood_donation_app/presentation/pages/a_negative_blood_donar_page.dart';
import 'package:blood_donation_app/presentation/pages/a_positive_blood_donars_page.dart';
import 'package:blood_donation_app/presentation/pages/ab_negative_blood_donar_page.dart';
import 'package:blood_donation_app/presentation/pages/ab_positive_blood_donar_page.dart';
import 'package:blood_donation_app/presentation/pages/b_negative_blood_donar_page.dart';
import 'package:blood_donation_app/presentation/pages/b_positive_blood_donar_page.dart';
import 'package:blood_donation_app/presentation/pages/o_negative_blood_donar_page.dart';
import 'package:blood_donation_app/presentation/pages/o_positive_blood_donar_page.dart';
import 'package:blood_donation_app/presentation/widgets/my_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class MyHomePage extends GetView<MyHomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(25.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lets help to save a life",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.bloodColor,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Find your Blood Group with us",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 50),
                    Text(
                      "Blood Group",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: AppColors.bloodColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        child: Text(
                          "A+",
                          style: TextStyle(
                            fontSize: 40,
                            color: AppColors.bloodColor,
                          ),
                        ),
                      ),
                      onTap: () {
                        Get.to(() => ABNegativeBloodDonarPage());
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
