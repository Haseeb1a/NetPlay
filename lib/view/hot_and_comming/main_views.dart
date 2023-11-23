import 'package:flutter/material.dart';
import 'package:netflix/view/hot_and_comming/comming_soon.dart';
import 'package:netflix/view/hot_and_comming/hot_views.dart';
import 'package:netflix/view/hot_and_comming/tab_appbar.dart';

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
        body: TabBarView(children: [
          buildEveyOne(),
          buildComingSoon(),
        ]),
      ),
    );
  }
}
