import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoControllerProvider with ChangeNotifier {
  late VideoPlayerController _controller;

  VideoPlayerController get controller => _controller;

  void initialize(String videoUrl) async {
    _controller = VideoPlayerController.network(videoUrl);
    await _controller.initialize();
    _controller.setLooping(true);
    _controller.play();
    notifyListeners();
  }

  // void dispose() {
  //   _controller?.dispose();
  // }
}