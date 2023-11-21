import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:netflix/view/downloads/downloads.dart';
import 'package:netflix/view/home_page/home_page.dart';
import 'package:netflix/view/hot_veiw/hot_view.dart';
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
          
          backgroundColor: Color.fromARGB(255, 61, 60, 60),
          onTap: (int val) => setState(() => _currentIndex = val),
          currentIndex: _currentIndex,
          selectedItemColor: Colors.blue,
          items: [
            
            FloatingNavbarItem(icon: Icons.movie, title: 'Home'),
            FloatingNavbarItem(icon: Icons.movie_filter, title: 'views',),
            FloatingNavbarItem(icon: Icons.download, title: 'Downloads'),
            FloatingNavbarItem(icon: Icons.search, title: 'search'),
          ],
        ),
      ),
    );
  }
}
