import 'package:flutter/material.dart';
import 'package:netflix/view/hot_and_new/widgets/comming_soon.dart';
import 'package:netflix/view/hot_and_new/widgets/everyone_watch.dart';
import 'package:netflix/view/hot_and_new/widgets/tab_appbar.dart';
class HotView extends StatefulWidget {
  const HotView({super.key});

  @override
  State<HotView> createState() => _HotViewState();
}

class _HotViewState extends State<HotView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: Tap_Appbar(),
        body: const TabBarView(children: [
          CommingSoonWidget(),
          EveryoneWatchingWidget(),
        ]),
      ),
    );
  }
}
