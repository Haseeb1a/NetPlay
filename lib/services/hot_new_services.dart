import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:netflix/model/movie_info.dart';
import 'package:netflix/model/tmdb_api_response.dart';
import 'package:netflix/services/api_endpont.dart';

class HotandNewServices {
  List<MovieInfoModel> comingSoonList = [];
  List<MovieInfoModel> everyOnesWatchingList = [];

  Future fetchComingSoon() async {
    try {
      final Dio dio = Dio();
      final response = await dio.get(ApiEndPoints.upcoming);
      if (response.statusCode == 200) {
        Map<String, dynamic> data = response.data;
        TMDBApiResponseModel tmdbApiResponse =
            TMDBApiResponseModel.fromjson(data);
        comingSoonList = tmdbApiResponse.results;
        return comingSoonList;
      } else {
        return [];
      }
    } catch (error) {
      log('Error Encountered: $error');
      throw error.toString();
    }
  }

  Future fetchEveryOnesWatching() async {
    try {
      final Dio dio = Dio();
      final response = await dio.get(ApiEndPoints.moviepopular);
      if (response.statusCode == 200) {
        Map<String, dynamic> data = response.data;
        TMDBApiResponseModel tmdbApiResponse =
            TMDBApiResponseModel.fromjson(data);
        everyOnesWatchingList = tmdbApiResponse.results;
        return everyOnesWatchingList;
      } else {
        return [];
      }
    } catch (error) {
      log('Error Encountered: $error');
      throw error.toString();
    }
  }
}
