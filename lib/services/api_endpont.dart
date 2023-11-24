import 'package:netflix/constants/base_url.dart';
import 'package:netflix/helpers/api_key.dart';

class ApiEndPoints {
    static const trendingMovies = "$kBaseurl/trending/all/day?api_key=$apiKey";
    static const searchmovie = '$kBaseurl/search/movie?api_key=$apiKey&query=';
    static const upcoming =
      "$kBaseurl/movie/upcoming?api_key=$apiKey&language=en-US&page=1"; 
     static const moviepopular =
      '$kBaseurl/popular?api_key=$apiKey&language=en-US&page=1';  
     static const tvpopular =
      "$kBaseurl/tv/popular?api_key=$apiKey&language=en-US&page=1";
     static const tvtoprate =
      '$kBaseurl/discover/tv?include_adult=false&language=en-US&page=1&sort_by=vote_average.desc&vote_count.gte=200&api_key=$apiKey';
}
