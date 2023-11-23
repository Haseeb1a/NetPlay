import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/helpers/colors.dart';

class MainTitle extends StatelessWidget {
  final String title;
  const MainTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return BorderedText(
        strokeColor: AppColors().primarytheme,
        strokeWidth: 2,
        child: Text(
          title,
          style: GoogleFonts.montserrat().copyWith(
              fontSize: 22,
              color: AppColors().darktheme,
              fontWeight: FontWeight.bold),
        ));
  }
}
