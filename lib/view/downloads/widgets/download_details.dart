import 'dart:math';
import 'package:flutter/material.dart';
import 'package:netflix/helpers/constants.dart';
class DownloadInformation2 extends StatelessWidget {
  const DownloadInformation2({super.key});

  @override
  Widget build(BuildContext context) {
    final List imageLists = [
      "https://m.media-amazon.com/images/I/81IRYGO1byL._AC_UL480_FMwebp_QL65_.jpg",
      "https://m.media-amazon.com/images/I/71Bwhb+M-qL._AC_UL480_FMwebp_QL65_.jpg",
      "https://m.media-amazon.com/images/I/7172Cd5zGHL._AC_UL480_FMwebp_QL65_.jpg",
    ];
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        ch20,
        const Text(
          'Indroducing Downloads for You',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          textAlign: TextAlign.center,
        ),
        ch20,
        const Text(
          'We will download a personlided a  selection of  movies ans show for you. so there is always somwthing to watch on your device',
          style: TextStyle(
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(alignment: Alignment.center, children: [
            CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 34, 78, 114),
              radius: size.width * 0.39,
            ),
            DownloadImagelist(
              imageLists: imageLists[0],
              margin: const EdgeInsets.only(
                left: 100,
                bottom: 80,
              ),
              angle: 0,
            ),
            DownloadImagelist(
              imageLists: imageLists[1],
              margin: const EdgeInsets.only(left: 10, bottom: 29),
              angle: 0,
            ),
            DownloadImagelist(
                imageLists: imageLists[2],
                margin: const EdgeInsets.only(right: 80, top: 20))
          ]),
        ),
      ],
    );
  }
}

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            width: double.infinity,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.blueAccent[700],
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Set up",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.white,
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "See want you can download",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class DownloadImagelist extends StatelessWidget {
  const DownloadImagelist({
    super.key,
    required this.imageLists,
    this.angle = 0,
    required this.margin,
  });

  final String imageLists;
  final double angle;
  final EdgeInsets margin;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 100,
      child: Container(
        margin: margin,
        width: size.width * 0.4,
        height: size.width * 0.58,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(imageLists), fit: BoxFit.cover)),
      ),
    );
  }
}
