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
    final provider = Provider.of<HotAndNewController>(context);
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
        top: 22,
      ),
      child: ListView.builder(
        itemCount: provider.upcoming.length,
        itemBuilder: (context, index) {
          final MovieInfoModel data = provider.upcoming[index];
          return Row(
            children: [
              SizedBox(
                width: 50,
                height: 420,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'FEB',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    Text(
                      '11',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: AppColors().whitetheme,
                          letterSpacing: 4),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: size.width - 50,
                height: 420,
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
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                            data.originalTitle.toString(),
                            style: TextStyle(
                                color: AppColors().whitetheme,
                                // fontSize: 28,
                                fontSize: size.width * 0.029,
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
                    const SizedBox(
                      height: 20,
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
