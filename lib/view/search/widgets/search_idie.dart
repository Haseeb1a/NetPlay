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
        cwidth20,
        Text(
          'Top Searches',
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
         
          mainAxisSpacing: 6,
          // crossAxisSpacing: ,
          childAspectRatio: 4/5,
             crossAxisCount: 3,
             children: List.generate(20, (index) =>TopSearchTile())
          )
        )
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
          width: screenWidth*0.3,
          height:screenWidth*0.62,
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            // color: Colors.green,
              image: DecorationImage(
                fit: BoxFit.cover,
            image: NetworkImage('https://m.media-amazon.com/images/I/81IRYGO1byL._AC_UL480_FMwebp_QL65_.jpg'),
            
          )),
        )
      ],
    );
  }
}
