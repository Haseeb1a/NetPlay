import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/controller/bottom_controller.dart';
import 'package:netflix/controller/home_controller.dart';
import 'package:netflix/controller/hot_new_controller.dart';
import 'package:netflix/controller/search_controller.dart';
import 'package:netflix/controller/shorts_controller.dart';
import 'package:netflix/controller/video_controller.dart';
import 'package:netflix/widgets/bottom_bar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeScreenController(),
        ),
        ChangeNotifierProvider(
          create: (context) => HotAndNewController(),
        ),
        ChangeNotifierProvider(
          create: (context) => SearchsController(),
        ),
        ChangeNotifierProvider(
          create: (context) => BottomController(),
        ),
        ChangeNotifierProvider(create: (context) => ShortController()),
        ChangeNotifierProvider(create: (context) => VideoControllerProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'NetPlayX',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
          fontFamily: GoogleFonts.montserrat().fontFamily,
          textTheme: const TextTheme(
            bodyMedium: TextStyle(color: Colors.white),
          ),
          scaffoldBackgroundColor: Colors.black,
        ),
        home: const BottomBar(),
      ),
    );
  }
}
