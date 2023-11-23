import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/helpers/colors.dart';
import 'package:netflix/helpers/constants.dart';

class AppBarWidget extends StatelessWidget {
   AppBarWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        constantwidth10,
          BorderedText(
             strokeColor: AppColors().whitetheme,
              strokeWidth: 1,
          child: Text(title,style: GoogleFonts.montserrat().copyWith(
              fontSize: 30,
              color: AppColors().primarytheme,
              fontWeight: FontWeight.bold),)),
        Spacer(),
         Icon(
          Icons.cast,
          color: AppColors().whitetheme,
          size: 30,
        ),
        constantwidth10,
        Container(
          width: 30,
          height: 30,
          color: AppColors().darktheme,
        )
      ],
    );
  }
}
