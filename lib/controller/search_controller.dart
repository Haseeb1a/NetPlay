import 'package:flutter/material.dart';
import 'package:netflix/model/movie_info.dart';
import 'package:netflix/services/search_result_services.dart';

class SearchsController extends ChangeNotifier {
  String name = '';
  Future<void> search(String query) async {
    name = query;
    getSearchResults(name);
    notifyListeners();
  }

  List<MovieInfoModel> searchResults = [];
  Future<void> getSearchResults(String searchName) async {
    searchResults = (await SearchResultServices().fetchSearchResult(searchName))!;
    notifyListeners();
  }
}
