import 'package:flutter/material.dart';
import 'package:netflix/helpers/constants.dart';
import 'package:netflix/widgets/main_tilte.dart';

class HorizontalList extends StatelessWidget {
   const HorizontalList({
    required this.title,
    required this.imageList,
     super.key,
      });
    final String title;
   final List<String> imageList;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainTitle(
            title: title,
          ),
          const SizedBox(
            height: 5,
          ),
          LimitedBox(
            maxHeight: 130,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(imageList.length, (index) =>   Container(
      margin: const EdgeInsetsDirectional.symmetric(horizontal: 5),
      width: 200,
      height: 250,
      decoration: BoxDecoration(
          image:  DecorationImage(
              image: NetworkImage(
                  imageList[index]),
              fit: BoxFit.cover),
          borderRadius: constRadius5),),)
            ),
          )
        ],
      ),
    );
  }
}