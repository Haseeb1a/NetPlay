import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/helpers/colors.dart';
import 'package:netflix/helpers/constants.dart';

class NumberCard extends StatelessWidget {
    final List<String> imagesList;
  const NumberCard({Key? key, required this.index,required this.imagesList});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 40,
                height: 150,
              ),
              Container(
                width: 130,
                height: 190,
                decoration: BoxDecoration(
                    image:  DecorationImage(
                        image: NetworkImage(
                         imagesList[index]   ),
                        fit: BoxFit.cover),
                    borderRadius: constRadius5),
              ),
            ],
          ),
        ],
      ),
      Positioned(
          left: 10,
          bottom: -8,
          child: BorderedText(
              strokeColor: AppColors().whitetheme,
              strokeWidth: 10,
              child: Text(
                "${index + 1}",
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 90,
                    color: Color.fromARGB(255, 0, 0, 0)),
              )))
    ]);
    
  }
}
