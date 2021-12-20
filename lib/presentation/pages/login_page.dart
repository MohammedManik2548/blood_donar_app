import 'package:blood_donation_app/presentation/colors/app_color.dart';
import 'package:blood_donation_app/presentation/controllers/login_page_controller.dart';
import 'package:blood_donation_app/presentation/widgets/my_button.dart';
import 'package:blood_donation_app/presentation/widgets/my_password_text_field.dart';
import 'package:blood_donation_app/presentation/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginPageController> {
  const LoginPage({Key? key}) : super(key: key);

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
                      "Login",
                      style: TextStyle(
                        color: AppColors.kWhite,
                        fontSize: 50,
                      ),
                    ),
                    Text(
                      "Welcome back",
                      style: TextStyle(
                        color: AppColors.kWhite,
                        fontSize: 18,
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
                  decoration: const BoxDecoration(
                    color: AppColors.kWhite,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60.0),
                      topRight: Radius.circular(60.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const MyTextField(
                          hintText: "Email",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const MyPasswordTextField(
                          hintText: "Password",
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        MyAppButton(
                          title: "Login",
                          onPressed: () {},
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
