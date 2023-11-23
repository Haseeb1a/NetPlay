import 'package:flutter/material.dart';
import 'package:netflix/helpers/colors.dart';
import 'package:netflix/helpers/constants.dart';
import 'package:netflix/view/home_page/home_page.dart';
import 'package:netflix/view/home_page/widget/custom_button_widget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: double.infinity,
        height: 500,
        // color: Colors.blue,
        decoration: BoxDecoration(
            borderRadius: constRadius7,
            image: const DecorationImage(
                image: NetworkImage(Cimage), fit: BoxFit.cover)),
      ),
      Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 13),
          child: Container(
            color: AppColors().darktheme,
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
                title: 'info',
                icon: Icons.info,
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
