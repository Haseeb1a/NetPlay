import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:netflix/model/movie_info.dart';
import 'package:netflix/services/hot_new_services.dart';


class HotAndNewController extends ChangeNotifier {
  HotAndNewController() {
    getComingSoonData();
    getEveryonesWatchingData();
  }
  List<MovieInfoModel> upcoming = [];
  List<MovieInfoModel> everyonesWatching = [];
   
   // filttering the date
  String fetchDate(String date) {
    DateTime dateInFormat = DateTime.parse(date);
    final formatDate = (DateFormat.MMMMd().format(dateInFormat)).split(" ");
    return "${formatDate.first.substring(0, 3)} \n${formatDate.last}";
  }
   //filltering the day 
  String fetchDay(String date) {
    DateTime dateInFormat = DateTime.parse(date);
    final dayName = DateFormat('EEEE').format(dateInFormat);
    return dayName;
  }

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
