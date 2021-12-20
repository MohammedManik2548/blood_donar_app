import 'package:blood_donation_app/presentation/colors/app_color.dart';
import 'package:flutter/material.dart';

class MyAppButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const MyAppButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      minWidth: 300,
      child: Text(
        title,
        style: TextStyle(
          color: AppColors.kWhite,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
      color: AppColors.bloodColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      onPressed: onPressed,
    );
  }
}
