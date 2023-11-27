import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/controller/hot_new_controller.dart';
import 'package:netflix/helpers/colors.dart';
import 'package:netflix/helpers/constants.dart';
import 'package:netflix/model/movie_info.dart';
import 'package:netflix/widgets/video_widget.dart';
import 'package:provider/provider.dart';
class EveryoneWatchingWidget extends StatelessWidget {
  const EveryoneWatchingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HotAndNewController>(context);
    return ListView.builder(
      itemCount: provider.everyonesWatching.length,
      itemBuilder: (context, index) {
        final MovieInfoModel data = provider.everyonesWatching[index];
        return Padding(
          padding:  const EdgeInsets.only(top: 25, left: 15, right: 10),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start, children: [
             Text(
              data.originalTitle.toString(),
              style: const TextStyle(
                  color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold,),
            ),
            cHeight10,
             Text(
              data.overview.toString(),
              style: TextStyle(color: Colors.white, fontSize: 15,fontFamily: GoogleFonts.aBeeZee().fontFamily,),
            ),
            cHeight20,
            VideoWidget(posterPath: data.posterPath),
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
          ]),
        );
      },
    );
  }
}
