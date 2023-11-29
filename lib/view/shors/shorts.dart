import 'package:flutter/material.dart';
import 'package:netflix/controller/shorts_controller.dart';
import 'package:netflix/controller/video_controller.dart';
import 'package:netflix/helpers/constants.dart';
import 'package:netflix/view/shors/widgets/short_icons.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

class ShortLIstpage extends StatelessWidget {
  const ShortLIstpage({super.key});

  @override
  Widget build(BuildContext context) {
    final shortsPageController = Provider.of<ShortController>(context);
    return PageView.builder(
        scrollDirection: Axis.vertical,
        controller: shortsPageController.pageController,
        itemCount: shortsPageController.video.length,
        itemBuilder: (context, index) {
          return VideoPlayerpage(videoUrl: shortsPageController.video[index]);
        });
  }
}

class VideoPlayerpage extends StatelessWidget {
  final String videoUrl;

  const VideoPlayerpage({super.key, required this.videoUrl});

  @override
  Widget build(BuildContext context) {
    // Call the initialize function here
    Provider.of<VideoControllerProvider>(context, listen: false)
        .initialize(videoUrl);

    return Scaffold(
      body: Center(
        child: Consumer<VideoControllerProvider>(
          builder: (context, provider, child) {
            return provider.controller.value.isInitialized
                ? Stack(children: [
                    AspectRatio(
                      aspectRatio: 8.5 / 16,
                      child: GestureDetector(
                          onTap: () {
                            if (provider.controller.value.isPlaying) {
                              provider.controller.pause();
                            } else {
                              provider.controller.play();
                            }
                          },
                          child: VideoPlayer(provider.controller)),
                    ),
                    Positioned(
                        bottom: 10,
                        right: 10,
                        child: Column(
                          children: [
                            SortsIcons(
                              text: 'Comment',
                              icon: const Icon(
                                Icons.message,
                                color: Color.fromARGB(255, 249, 201, 184),
                              ),
                            ),
                            cHeight20,
                            SortsIcons(
                              text: 'Like',
                              icon: const Icon(
                                Icons.heart_broken,
                                color: Colors.red,
                              ),
                            ),
                            cHeight20,
                            SortsIcons(
                              text: "Share",
                              icon: const Icon(
                                Icons.share,
                                color: Colors.blue,
                              ),
                            ),
                            cHeight20,
                            SortsIcons(
                              text: "List",
                              icon: const Icon(
                                Icons.add,
                                color: Colors.grey,
                              ),
                            ),
                            cHeight20,
                            SortsIcons(
                              text: 'Play',
                              icon: const Icon(
                                Icons.play_arrow_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )),
                    Positioned(
                        bottom: 10,
                        left: 10,
                        child: Column(
                          children: [
                            SortsIcons(
                              text: 'volume',
                              icon: const Icon(
                                Icons.volume_mute_rounded,
                                color: Colors.white,
                              ),
                            ),
                            cHeight20,
                            SortsIcons(
                              text: 'LOL',
                              icon: const Icon(
                                Icons.face_retouching_natural,
                                color: Colors.yellow,
                              ),
                            ),
                            cHeight10,
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.black,
                                  radius: 30,
                                  backgroundImage: Image.network(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgzNGyDclcm1J-h0lCQRHulN7l_K0E81iNQg&usqp=CAU',
                                    fit: BoxFit.cover,
                                  ).image,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Xbox',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )
                          ],
                        ))
                  ])
                : const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
