import 'package:flutter/material.dart';
import 'package:netflix/helpers/constants.dart';
import 'package:netflix/widgets/main_tilte.dart';

class MainTitileCard extends StatelessWidget {
  final String title;
    final List<String> imageList; 
  const MainTitileCard({
    super.key,
    required this.title,
      required this.imageList,
  });

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
            maxHeight: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(imageList.length, (index) => Container(
    margin: const EdgeInsetsDirectional.symmetric(horizontal: 5),
      width: 130,
      height: 250,
      decoration: BoxDecoration(
          image:  DecorationImage(image: NetworkImage(imageList[index]),fit: BoxFit.cover),
          borderRadius: constRadius5),
    ),),
            ),
          )
        ],
      ),
    );
  }
}
