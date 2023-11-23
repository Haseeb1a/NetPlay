import 'package:flutter/material.dart';
import 'package:netflix/helpers/colors.dart';
import 'package:netflix/helpers/constants.dart';
import 'package:netflix/view/home_page/widget/number_titile_card.dart';
import 'package:netflix/view/widgets/background_card.dart';
import 'package:netflix/view/widgets/horizontal_view.dart';

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
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://i.pinimg.com/736x/1d/d9/cb/1dd9cba6ce2e105983ab53146e053153.jpg'),
              fit: BoxFit.cover, // Adjust this based on your requirements
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(children: [
              ListView(
                children: const [
                  BackgroundCard(),
                  HorizontalList(
                    title: 'realse in post',
                  ),
                  cheight10,
                  MainTitileCard(
                    title: 'Treading Now',
                  ),
                 constBOx5,
                  NumberTitleCard(),
                  cheight10,
                  MainTitileCard(
                    title: 'Treading Now',
                  ),
                  cheight10,
                ],
              ),
            ]),
          ),
        ));
  }
}

class PlayButton extends StatelessWidget {
  const PlayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        style:  ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
        AppColors().darkshade,
      //  BorderSide()
        )),
        onPressed: () {},
        icon: Icon(
          Icons.play_arrow,
          size: 30,
          color: AppColors().primarytheme,
        ),
        label: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'play',
            style: TextStyle(
              fontSize: 20,
              color: AppColors().primarytheme,
            ),
          ),
        ));
  }
}
