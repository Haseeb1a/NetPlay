import 'package:flutter/material.dart';
import 'package:netflix/helpers/constants.dart';
import 'package:netflix/view/widgets/main_tilte.dart';

class HorizontalList extends StatelessWidget {
  final String title;
  const HorizontalList({super.key, required this.title});

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
              children: List.generate(10, (index) => const HorizolntalCard()),
            ),
          )
        ],
      ),
    );
  }
}

class HorizolntalCard extends StatelessWidget {
  const HorizolntalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.symmetric(horizontal: 5),
      width: 200,
      height: 250,
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: NetworkImage(
                  'https://m.media-amazon.com/images/I/81IRYGO1byL._AC_UL480_FMwebp_QL65_.jpg'),
              fit: BoxFit.cover),
          borderRadius: constRadius5),
    );
  }
}
