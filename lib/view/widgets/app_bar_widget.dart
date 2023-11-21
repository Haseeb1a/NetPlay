import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/helpers/colors.dart';
import 'package:netflix/helpers/constants.dart';

class AppBarWidget extends StatelessWidget {
   AppBarWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    final Size size= MediaQuery.of(context).size;
    return Row(
      children: [
        constantwidth10,
        Text(
          title,
          style: GoogleFonts.montserrat().copyWith(
              fontSize: 30,
              color: AppColors().whitetheme,
              fontWeight: FontWeight.bold),
        ),
        Spacer(),
        const Icon(
          Icons.cast,
          color: Colors.white,
          size: 30,
        ),
        constantwidth10,
        Container(
          width: 30,
          height: 30,
          color: Colors.black,
        )
      ],
    );
  }
}
