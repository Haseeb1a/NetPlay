import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/helpers/colors.dart';
import 'package:netflix/helpers/constants.dart';
import 'package:netflix/view/downloads/widgets/download_details.dart';
import 'package:netflix/view/widgets/app_bar_widget.dart';

class Download extends StatelessWidget {
  Download({super.key});
  final widgeList = [
    const DownloadInformation2(),
    const BottomSection(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: AppBarWidget(
                title: 'Downloads',
              )),
          body: ListView.separated(
              itemBuilder: (context, index) => widgeList[index],
              separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
              itemCount: widgeList.length)),
    );
  }
}
