import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:netflix/helpers/api_key.dart';
import 'package:netflix/model/movie_info.dart';
import 'package:netflix/model/tmdb_api_response.dart';

class PosterImageServices {
  Future<List<String>?> getMoviePosterImage(String url) async {
    try {
      final Dio dio = Dio();
      List<String> imageList = [];

      final response = await dio.get(url);

      if (response.statusCode == 200) {
        Map<String, dynamic> data = response.data;
        TMDBApiResponseModel tmdbResponse = TMDBApiResponseModel.fromjson(data);

        for (MovieInfoModel movieInfo in tmdbResponse.results) {
          if (movieInfo.posterPath != null) {
            imageList.add(
                'https://image.tmdb.org/t/p/w500${movieInfo.posterPath}?api_key=$apiKey');
          }
        }
        return imageList;
      } else {
        return null;
      }
    } catch (error) {
      log('error encountered ${error.toString()}');
      return null;
    }
  }
}
