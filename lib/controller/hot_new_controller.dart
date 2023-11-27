import 'package:flutter/material.dart';
import 'package:netflix/model/movie_info.dart';
import 'package:netflix/services/hot_new_services.dart';

class HotAndNewController extends ChangeNotifier {
  HotAndNewController() {
    getComingSoonData();
    getEveryonesWatchingData();
  }
  List<MovieInfoModel> upcoming = [];
  List<MovieInfoModel> everyonesWatching = [];

  //fetch ComingSoon data
  Future<void> getComingSoonData() async {
    upcoming = await HotandNewServices().fetchComingSoon();
    notifyListeners();
  }

  //fetch EveryonesWatching data
  Future<void> getEveryonesWatchingData() async {
    everyonesWatching = await HotandNewServices().fetchEveryOnesWatching();
    notifyListeners();
  }
}
