import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/controller/search_controller.dart';
import 'package:netflix/helpers/api_key.dart';
import 'package:netflix/helpers/colors.dart';
import 'package:netflix/helpers/constants.dart';
import 'package:netflix/model/movie_info.dart';
import 'package:provider/provider.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
                BorderedText(
             strokeColor: Color.fromARGB(255, 255, 255, 255),
              strokeWidth: 1,
          child: Text('Movies & Tv',style: GoogleFonts.montserrat().copyWith(
              fontSize: 28,
              color: AppColors().primarytheme,
              fontWeight: FontWeight.bold),)),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Consumer<SearchsController>(
              builder: (context, searchProvider, child) {
                return GridView.builder(
                  itemCount: searchProvider.searchResults.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 4 / 5,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    MovieInfoModel data = searchProvider.searchResults[index];
                    return Container(
                      width: size * 0.45,
                      height: size * 0.5,
                      decoration: BoxDecoration(
                          borderRadius: constRadius5,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://image.tmdb.org/t/p/w500${data.posterPath}?api_key=$apiKey'),
                          )),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

