import 'package:flutter/material.dart';
import 'package:netflix/services/download_service.dart';

class DownloadScreenProvider extends ChangeNotifier{
 List imagelist =[];
bool isLoading =true;
void initializeImage()async{
  imagelist =await DownloadServices().getTrendingMovies();
  isLoading=false;
  notifyListeners();
}

}