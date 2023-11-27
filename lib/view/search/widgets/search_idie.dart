import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/controller/home_controller.dart';
import 'package:netflix/helpers/colors.dart';
import 'package:netflix/helpers/constants.dart';
import 'package:provider/provider.dart';


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
            child: Text(
              'Top Searches',
              style: GoogleFonts.montserrat().copyWith(
                  fontSize: 28,
                  color: AppColors().primarytheme,
                  fontWeight: FontWeight.bold),
            )),
        cHeight10,
        Expanded(
          child: Consumer<HomeScreenController>(
            builder: (context, provider, child) {
              return GridView.count(
                  physics: const AlwaysScrollableScrollPhysics(),
                  mainAxisSpacing: 6,
                  childAspectRatio: 4 / 5,
                  crossAxisCount: 3,
                  children: List.generate(
                      provider.topTenImages.length,
                      (index) => TopSearchTile(
                            imagelist: provider.topTenImages[index],
                          )));
            },
          ),
        )
      ],
    );
  }
}
class TopSearchTile extends StatelessWidget {
  String imagelist;
  TopSearchTile({super.key, required this.imagelist});

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
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imagelist),
              )),
        )
      ],
    );
  }
}
