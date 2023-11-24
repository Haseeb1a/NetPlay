import 'package:flutter/material.dart';
import 'package:netflix/helpers/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const CustomButtonWidget({
    required this.icon,
    required this.title
    
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: AppColors().primarytheme,
          size: 30,
        ),
        Text(
          title,
          style: TextStyle(
            color: AppColors().whitetheme,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}