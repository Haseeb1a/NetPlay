import 'package:flutter/material.dart';
import 'package:netflix/services/api_endpont.dart';
import 'package:netflix/services/home_services.dart';

class HomeScreenController extends ChangeNotifier {
  HomeScreenController() {
    getTrendingImages();
    getUpcomingImages();
    getTopTenImages();
    getTvPopularImages();
    getPopularMoviesImages();
  }

  //trending Now

  List<String> trendingImages = [];
  Future<void> getTrendingImages() async {
    trendingImages = (await PosterImageServices()
        .getMoviePosterImage(ApiEndPoints.trendingMovies))!;
    notifyListeners();
  }



  //Upcoming Movies

  List<String> upcomingImages = [];
  Future<void> getUpcomingImages() async {
    upcomingImages =
        (await PosterImageServices().getMoviePosterImage(ApiEndPoints.upcoming))!;
    notifyListeners();
  }

  //Top Ten Movies

  List<String> topTenImages = [];
  Future<void> getTopTenImages() async {
    topTenImages =
        (await PosterImageServices().getMoviePosterImage(ApiEndPoints.top10))!;
    notifyListeners();
  }

  //TV Popular

  List<String> tvPopularimages = [];
  Future<void> getTvPopularImages() async {
    tvPopularimages =
        (await PosterImageServices().getMoviePosterImage(ApiEndPoints.tvPopular))!;
    notifyListeners();
  }

  //Popular Movies

  List<String> popularMoviesImages = [];
  Future<void> getPopularMoviesImages() async {
    popularMoviesImages = (await PosterImageServices()
        .getMoviePosterImage(ApiEndPoints.moviepopular))!;
    notifyListeners();
  }
}
