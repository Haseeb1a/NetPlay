import 'package:flutter/material.dart';
import 'package:netflix/helpers/constants.dart';
import 'package:netflix/view/home_page/widget/custom_button_widget.dart';
import 'package:netflix/view/home_page/widget/number_titile_card.dart';
import 'package:netflix/view/widgets/background_card.dart';

import '../widgets/main_title_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Stack(children: [
            ListView(
              children: [
                BackgroundCard(),
                MainTitileCard(
                  title: 'Release in the post year',
                ),
                cheight10,
                MainTitileCard(
                  title: 'Treading Now',
                ),
                cheight10,
                NumberTitleCard(),
              ],
            ),
          ]),
        ));
  }
}

// class CustomButtonWidget extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   const CustomButtonWidget({
//     required this.icon,
//     required this.title

//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Icon(
//           icon,
//           color: Colors.white,
//           size: 30,
//         ),
//         Text(
//           title,
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 18,
//           ),
//         ),
//       ],
//     );
//   }
// }

class PlayButton extends StatelessWidget {
  const PlayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
          Colors.white,
        )),
        onPressed: () {},
        icon: Icon(
          Icons.play_arrow,
          size: 30,
        ),
        label: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'play',
            style: TextStyle(fontSize: 20),
          ),
        ));
  }
}
