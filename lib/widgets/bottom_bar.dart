import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:netflix/helpers/colors.dart';
import 'package:netflix/view/downloads/downloads.dart';
import 'package:netflix/view/home_page/home_page.dart';
import 'package:netflix/view/hot_and_new/main_views.dart';
import 'package:netflix/view/search/searched.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;

  final List<Widget> bottomBarBarPages = [
    const Home(),
    const HotView(),
     Download(),
    const SearchScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: bottomBarBarPages[_currentIndex],
        bottomNavigationBar: FloatingNavbar(
          
          // iconSize: 30,
          // itemBorderRadius: 10,
          selectedBackgroundColor: AppColors().darktheme,
          
          
          backgroundColor: Color.fromARGB(255, 27, 27, 27),
          onTap: (int val) => setState(() => _currentIndex = val),
          currentIndex: _currentIndex,
          elevation: 10,
         
          selectedItemColor: AppColors().primarytheme,
          unselectedItemColor: AppColors().whitetheme,
          
          items: [
            
            FloatingNavbarItem(icon: Icons.movie, title: 'Home'),
            FloatingNavbarItem(icon: Icons.movie_filter, title: 'views',),
            FloatingNavbarItem(icon: Icons.download, title: 'Downloads'),
            FloatingNavbarItem(icon: Icons.search, title: 'search'),
          ]
        ),
      ),
    );
  }
}
