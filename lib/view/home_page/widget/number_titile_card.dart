import 'package:flutter/material.dart';
import 'package:netflix/view/home_page/widget/number_card.dart';
import 'package:netflix/widgets/main_tilte.dart';

class NumberTitleCard extends StatelessWidget {
    final List<String> imagesList;
  const NumberTitleCard({
    required this.imagesList,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(5.0),
          child: MainTitle(
            title: 'Top 10',
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        LimitedBox(
            maxHeight: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                10,
                (index) => NumberCard(index: index,imagesList:imagesList),
              ),
            ))
      ],
    );
  }
}
