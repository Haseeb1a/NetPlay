import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:netflix/model/movie_info.dart';
import 'package:netflix/model/tmdb_api_response.dart';
import 'package:netflix/services/api_endpont.dart';

class SearchResultServices {
  List<MovieInfoModel> searchResult = [];

  Future fetchSearchResult(String query) async {
    try {
      final Dio dio = Dio();
      final response = await dio.get(ApiEndPoints.searchmovie + query);

      if (response.statusCode == 200) {
        final data = response.data;
        TMDBApiResponseModel searchDatas = TMDBApiResponseModel.fromjson(data);

        searchResult = searchDatas.results;

        return searchResult;
      } else {
        return null;
      }
    } catch (error) {
      log('Error Encountered: $error');
    }
  }
}
