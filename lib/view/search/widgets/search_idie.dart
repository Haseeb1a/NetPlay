import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/helpers/colors.dart';
import 'package:netflix/helpers/constants.dart';

const imageUrls =
    "https://m.media-amazon.com/images/I/71Bwhb+M-qL._AC_UL480_FMwebp_QL65_.jpg";

class SearchIdelWidget extends StatelessWidget {
  SearchIdelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        cWidth20,
        BorderedText(
             strokeColor: Color.fromARGB(255, 255, 255, 255),
              strokeWidth: 1,
          child: Text('Top Searches',style: GoogleFonts.montserrat().copyWith(
              fontSize: 28,
              color: AppColors().primarytheme,
              fontWeight: FontWeight.bold),)),
        // Text(
        //   'Top Searches',
        //   style: GoogleFonts.montserrat().copyWith(
        //       fontSize: 30,
        //       color: AppColors().primarytheme,
        //       fontWeight: FontWeight.bold),
        // ),
        cHeight10,
        Expanded(
            child: GridView.count(
                physics: const AlwaysScrollableScrollPhysics(),
                mainAxisSpacing: 6,
                childAspectRatio: 4 / 5,
                crossAxisCount: 3,
                children: List.generate(20, (index) => const TopSearchTile())))
      ],
    );
  }
}

class TopSearchTile extends StatelessWidget {
  const TopSearchTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.3,
          height: screenWidth * 0.62,
          decoration: BoxDecoration(
              borderRadius: constRadius5,
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://m.media-amazon.com/images/I/81IRYGO1byL._AC_UL480_FMwebp_QL65_.jpg'),
              )),
        )
      ],
    );
  }
}
