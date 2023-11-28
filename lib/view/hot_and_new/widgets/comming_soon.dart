import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/controller/hot_new_controller.dart';
import 'package:netflix/helpers/api_key.dart';
import 'package:netflix/helpers/colors.dart';
import 'package:netflix/model/movie_info.dart';
import 'package:provider/provider.dart';

class CommingSoonWidget extends StatelessWidget {
  const CommingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final upcommingProvider = Provider.of<HotAndNewController>(context);
    final Size size = MediaQuery.of(context).size;
    return  upcommingProvider.upcoming.isEmpty?Center(child: Container(child: CircularProgressIndicator(),)) :Padding(
      padding: const EdgeInsets.only(
        top: 22,
      ),
      child: ListView.builder(

        itemCount: upcommingProvider.upcoming.length,
        itemBuilder: (context, index) {
          final MovieInfoModel data = upcommingProvider.upcoming[index];
          return Row(
            children: [
              SizedBox(
                width: 50,
                height: 430,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        upcommingProvider.fetchDate(data.releaseDate!),
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: AppColors().whitetheme,
                            letterSpacing: 4),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: size.width - 50,
                height: 430,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18)),
                          width: double.infinity,
                          height: 200,
                          child: Image.network(
                            'https://image.tmdb.org/t/p/w500${data.posterPath}?api_key=$apiKey',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: CircleAvatar(
                          radius: 17,
                          backgroundColor: Colors.black.withOpacity(0.5),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.volume_off,
                              size: 17,
                              color: AppColors().whitetheme,
                            ),
                          ),
                        ),
                      )
                    ]),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                            data.originalTitle.toString().length > 22
                                ? '${data.originalTitle.toString().substring(0, 19)}...'
                                : data.originalTitle.toString(),
                            // data.originalTitle.toString(),
                            style: TextStyle(
                                fontFamily: GoogleFonts.montserrat().fontFamily,
                                color: AppColors().whitetheme,
                                // fontSize: 28,
                                fontSize: size.width * 0.05,
                                fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.info,
                            color: AppColors().redtheme,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.share,
                            color: AppColors().primarytheme,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text.rich(
                        TextSpan(
                            text: "Coming On   ",
                            style: TextStyle(
                              color: AppColors().primarytheme,
                              fontFamily: GoogleFonts.montserrat().fontFamily,
                            ),
                            children: [
                              TextSpan(
                                  text: upcommingProvider
                                      .fetchDay(data.releaseDate!),
                                  style: TextStyle(
                                      color: AppColors().redtheme,
                                      fontFamily:
                                          GoogleFonts.montserrat().fontFamily,
                                      fontSize: 18))
                            ]),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        data.overview.toString(),
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: AppColors().whitetheme,
                          fontSize: 15,
                          fontFamily: GoogleFonts.montserrat().fontFamily,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
