import 'package:flutter/material.dart';
import 'package:netflix/view/widgets/main_card.dart';
import 'package:netflix/view/widgets/main_tilte.dart';

class MainTitileCard extends StatelessWidget {
  final String title;
  const MainTitileCard({
    super.key,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
            children: List.generate(10, (index) => const MainCard()),
          ),
        )
      ],
    );
  }
}
