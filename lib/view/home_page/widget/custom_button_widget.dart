import 'package:flutter/material.dart';

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
          color: Colors.white,
          size: 30,
        ),
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}