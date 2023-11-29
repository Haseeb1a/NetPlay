import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ShortController extends ChangeNotifier {
  //  late VideoPlayerController controller;
  late PageController pageController;

  // get controllerss => _controller;

  ShortController() {
    pageController = PageController(initialPage: 0);
    // initialize()
    // Starter(pageController);
  }

  List<String> video = [
    'https://player.vimeo.com/external/404141637.sd.mp4?s=f338050f9f6bf89f95c136bea510a2e315d88fef&profile_id=165&oauth2_token_id=57447761',
    'https://player.vimeo.com/external/365208306.sd.mp4?s=d4291f8b07f69dcbc189a05f29b3532342ddea07&profile_id=164&oauth2_token_id=57447761',
    'https://player.vimeo.com/external/403652175.hd.mp4?s=78a782c1916a0cb126ab4f85378e433d6aef5676&profile_id=174&oauth2_token_id=57447761',
  ];
  late VideoPlayerController _controller;

  VideoPlayerController get controller => _controller;

  void initialize(String videoUrl) async {
    _controller = VideoPlayerController.network(videoUrl);
    await _controller.initialize();
    _controller.setLooping(true);
    _controller.play();
    notifyListeners();
  }
}
