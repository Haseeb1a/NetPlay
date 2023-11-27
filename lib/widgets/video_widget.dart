import 'package:flutter/material.dart';
import 'package:netflix/helpers/api_key.dart';
import 'package:netflix/helpers/colors.dart';

class VideoWidget extends StatelessWidget {
  String ?posterPath;
   VideoWidget({
    required this.posterPath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(18)),
        width: double.infinity,
        height: 200,
        child: Image.network(
          'https://image.tmdb.org/t/p/w500$posterPath?api_key=$apiKey',
          fit: BoxFit.cover,
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
                              icon:  Icon(
                                Icons.volume_off,
                                size: 17,
                                color: AppColors().whitetheme,
                              ),
                            ),
                          ),
      )
    ]);
  }
}
