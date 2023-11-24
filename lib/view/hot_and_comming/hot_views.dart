import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/helpers/colors.dart';
import 'package:netflix/helpers/constants.dart';

Widget buildEveyOne() {
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (BuildContext context, index) {
      return const CommingSoonWidget();
    },
  );
}

class CommingSoonWidget extends StatelessWidget {
  const CommingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        children: [
          SizedBox(
            width: 40,
            height: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'FEB',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Text(
                  '11',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: AppColors().whitetheme,
                      letterSpacing: 4),
                )
              ],
            ),
          ),
          SizedBox(
            width: size.width - 50,
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(18)),
                    width: double.infinity,
                    height: 200,
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzJTkdPVAsp-i9GdusgSvj6LztRYsDQgzZkw&usqp=CAU',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.black.withOpacity(0.5),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.volume_off,
                          size: 20,
                        ),
                      ),
                    ),
                  )
                ]),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'TALL GIRL 2',
                        style: TextStyle(
                            color: AppColors().whitetheme,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.info,
                        color: AppColors().redtheme,
                      ),
                      Icon(
                        Icons.share,
                        color: AppColors().primarytheme,
                      )
                    ],
                  ),
                ),
                Text(
                  'Cursed Child',
                  style: TextStyle(
                      color: AppColors().whitetheme,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                cHeight10,
                Text(
                  'Jujutsu Kaisen is a highly acclaimed shonen anime and manga series that has gained widespread popularity among fans for its stunning animation, fast-paced action, and complex characters. In this list, we’ll be outlining all the story arcs in the anime series, from the beginning of the story to its current point in the manga.',
                  style: TextStyle(color: AppColors().whitetheme, fontSize: 15,fontFamily: GoogleFonts.montserrat().fontFamily,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
