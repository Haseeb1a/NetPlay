import 'package:flutter/material.dart';
import 'package:netflix/helpers/colors.dart';
import 'package:netflix/helpers/constants.dart';
import 'package:netflix/view/home_page/home_page.dart';
import 'package:netflix/view/home_page/widget/custom_button_widget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(children: [
      Container(
        width: double.infinity,
        height: 500,
        // color: Colors.blue,
        decoration: BoxDecoration(
            borderRadius: constRadius7,
            image: const DecorationImage(
                image: NetworkImage(cimage), fit: BoxFit.cover)),
      ),
      Positioned(
          bottom: 0,
          child: Container(
            height: 150,
            width: size.width,
            // width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromARGB(255, 0, 0, 0).withOpacity(0), Colors.black],
            )),
          )),
      Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 13),
          child: Container(
            height: 25,
             decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [AppColors().darktheme, Color.fromARGB(255, 0, 0, 0).withOpacity(0)],
            )),
            // color: AppColors().darktheme,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'TV Show',
                  style: TextStyle(
                    color: AppColors().primarytheme,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Movies',
                  style: TextStyle(
                      color: AppColors().primarytheme,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                Text(
                  'Categories',
                  style: TextStyle(
                      color: AppColors().primarytheme,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                )
              ],
            ),
          ),
        ),
      ),
      const Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Padding(
          padding: EdgeInsets.only(bottom: 13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButtonWidget(
                title: 'My List',
                icon: Icons.add,
              ),
              PlayButton(),
              CustomButtonWidget(
                title: 'Info',
                icon: Icons.info,
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
