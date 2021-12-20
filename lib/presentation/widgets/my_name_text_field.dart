import 'package:blood_donation_app/presentation/colors/app_color.dart';
import 'package:flutter/material.dart';

class MyNameTextField extends StatelessWidget {
  final String hintText;

  const MyNameTextField({Key? key, required this.hintText,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Color(0XFFe7edeb),
        hintText: hintText,
        prefixIcon: Icon(
          Icons.person,
          color: AppColors.bloodColor,
        ),
      ),
    );
  }
}
