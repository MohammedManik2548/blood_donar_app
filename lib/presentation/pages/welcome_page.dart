import 'package:blood_donation_app/presentation/colors/app_color.dart';
import 'package:blood_donation_app/presentation/pages/login_page.dart';
import 'package:blood_donation_app/presentation/pages/registation_page.dart';
import 'package:blood_donation_app/presentation/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

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
                      "WelCome",
                      style: TextStyle(
                        color: AppColors.kWhite,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "to",
                      style: TextStyle(
                        color: AppColors.kWhite,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "ROKTER BADHAN NANGALKOT",
                      style: TextStyle(
                        color: AppColors.kWhite,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
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
                height: double.infinity,
                color: AppColors.bloodColor,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.kWhite,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60.0),
                      topRight: Radius.circular(60.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 250,
                          width: 250,
                          child: Image.asset(
                            "lib/presentation/images/welcome_page_logo.png",
                          ),
                        ),
                        MyAppButton(
                          title: "Login",
                          onPressed: () {
                            Get.to(() => LoginPage());
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MyAppButton(
                          title: "Registation",
                          onPressed: () {
                            Get.to(()=>RegistationPage());
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
