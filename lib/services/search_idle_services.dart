import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:netflix/model/movie_info.dart';
import 'package:netflix/model/tmdb_api_response.dart';
import 'package:netflix/services/api_endpont.dart';

class SearchidleServices {
  List<MovieInfoModel> searchMovies = [];

  Future fetchSearchMovies() async {
    try {
      final Dio dio = Dio();
      final response = await dio.get(ApiEndPoints.top10);

      if (response.statusCode == 200) {
        final data = response.data;
        TMDBApiResponseModel searchDatas = TMDBApiResponseModel.fromjson(data);

        searchMovies = searchDatas.results;

        return searchMovies;
      } else {
        return null;
      }
    } catch (error) {
      log('Error Encountered: $error');
    }
  }
}
