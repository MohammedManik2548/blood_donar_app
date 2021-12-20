import 'package:blood_donation_app/presentation/colors/app_color.dart';
import 'package:blood_donation_app/presentation/controllers/registation_page_controller.dart';
import 'package:blood_donation_app/presentation/pages/home_page.dart';
import 'package:blood_donation_app/presentation/widgets/my_button.dart';
import 'package:blood_donation_app/presentation/widgets/my_name_text_field.dart';
import 'package:blood_donation_app/presentation/widgets/my_password_text_field.dart';
import 'package:blood_donation_app/presentation/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistationPage extends GetView<RegistationPageController> {
  const RegistationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                color: AppColors.bloodColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Registation",
                      style: TextStyle(
                        color: AppColors.kWhite,
                        fontSize: 50,
                      ),
                    ),
                    Text(
                      "Welcome back",
                      style: TextStyle(
                        color: AppColors.kWhite,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                width: double.infinity,
                color: AppColors.bloodColor,
                child: Container(
                  decoration:  BoxDecoration(
                    color: AppColors.kWhite,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60.0),
                      topRight: Radius.circular(60.0),
                    ),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MyNameTextField(
                          hintText: "Enter your full name",
                        ),
                        SizedBox(height: 10),
                        MyTextField(
                          hintText: "Email",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        MyPasswordTextField(
                          hintText: "Password",
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        MyAppButton(
                          title: "Continue",
                          onPressed: () {
                            Get.to(() => MyHomePage());
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
