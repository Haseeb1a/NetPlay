import 'package:flutter/material.dart';
import 'package:netflix/helpers/constants.dart';
import 'package:netflix/view/widgets/app_bar_widget.dart';

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
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(90),
            child: AppBar(
              backgroundColor: Colors.black,
              title: Text(
                "Hot & New",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
              actions: [
                const Icon(
                  Icons.cast,
                  color: Colors.white,
                  size: 30,
                ),
                constantwidth10,
                Container(
                  width: 30,
                  height: 30,
                  color: Colors.black,
                )
              ],
              bottom: TabBar(
                unselectedLabelColor: Colors.white,
                labelColor: Colors.black,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                tabs: [
                  Tab(
                    text: '🍿 Comming soon!',
                  ),
                  Tab(
                    text: "👀 Everyone's Watching",
                  )
                ],
              ),
            )),
        body: TabBarView(children: [
          buildTabViewText('Comming soon!'),
          buildTabViewText('every one watching')
        ]),
      ),
    );
  }

  buildTabViewText(String name) {
    return Center(
      child: Text(name,style: TextStyle(color: Colors.white),),
    );
  }
}
