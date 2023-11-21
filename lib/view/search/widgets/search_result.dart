import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/helpers/colors.dart';
import 'package:netflix/helpers/constants.dart';

const imageUrls =
    "https://m.media-amazon.com/images/I/81IRYGO1byL._AC_UL480_FMwebp_QL65_.jpg";

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Movies & Tv',
            style: GoogleFonts.montserrat().copyWith(
                fontSize: 30,
                color: AppColors().whitetheme,
                fontWeight: FontWeight.bold),
          ),
          cheight10,
          Expanded(
              child: GridView.count(
                  physics: AlwaysScrollableScrollPhysics(),
                  // shrinkWrap: true,

                  mainAxisSpacing: 10,
                   crossAxisSpacing:10 ,
                  childAspectRatio: 1 / 1,
                  crossAxisCount: 2,
                  children: List.generate(20, (index) => ScreenResultTile())))
        ],
      ),
    );
  }
}

class ScreenResultTile extends StatelessWidget {
  const ScreenResultTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.45,
          height: screenWidth * 0.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              // color: Colors.green,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://m.media-amazon.com/images/I/81IRYGO1byL._AC_UL480_FMwebp_QL65_.jpg'),
              )),
        )
      ],
    );
  }
}
