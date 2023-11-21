import 'package:flutter/material.dart';
import 'package:netflix/helpers/constants.dart';
import 'package:netflix/view/widgets/main_card.dart';
import 'package:netflix/view/widgets/main_tilte.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return    Scaffold(
    backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
 
          MainTitle(title: "Released in the past Year",),
          LimitedBox(
            maxWidth:200 ,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children:
               List.generate(10, (index) => MainCard(
          
              ))
            ),
          )         
          ],
          
        ),
      )
    );
  }
}

