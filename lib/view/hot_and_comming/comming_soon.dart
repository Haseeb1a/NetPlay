import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/helpers/colors.dart';
import 'package:netflix/helpers/constants.dart';
import 'package:netflix/view/widgets/video_widget.dart';

Widget buildComingSoon() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return   Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              'Cursed Child',
              style: TextStyle(
                  color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold,),
            ),
            cHeight10,
             Text(
              'Jujutsu Kaisen is a highly acclaimed shonen anime and manga series that has gained widespread popularity among fans for its stunning animation, fast-paced action, and complex characters. In this list, we’ll be outlining all the story arcs in the anime series, from the beginning of the story to its current point in the manga.',
              style: TextStyle(color: Colors.white, fontSize: 15,fontFamily: GoogleFonts.aBeeZee().fontFamily,),
            ),
            cHeight20,
            const VideoWidget(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.share,
                    color:AppColors().primarytheme,
                    size: 25,
                  ),
                  cWidth20,
                  Icon(
                    Icons.add,
                    color: AppColors().whitetheme,
                    size: 27,
                  ),
                  cWidth20,
                  Icon(
                    Icons.play_arrow,
                    color: AppColors().primarytheme,
                    size: 30,
                  ),
                ],
              ),
            ),
          ]);
        },
      ),
    ),
  );
}
