import 'package:flutter/material.dart';

class SortsIcons extends StatelessWidget {
  final Icon icon;
  final String text;
  SortsIcons({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          child: icon,
          radius: 30,
          backgroundColor: const Color.fromARGB(93, 0, 0, 0),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
