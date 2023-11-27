import 'package:flutter/material.dart';
import 'package:netflix/controller/home_controller.dart';
import 'package:netflix/helpers/colors.dart';
import 'package:netflix/helpers/constants.dart';
import 'package:netflix/view/home_page/widget/number_titile_card.dart';
import 'package:netflix/view/home_page/widget/background_card.dart';
import 'package:netflix/widgets/horizontal_view.dart';
import 'package:netflix/widgets/main_title_card.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
     final homeScreenProvider = Provider.of<HomeScreenController>(context);
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
                children:  [
                  BackgroundCard(),
                  HorizontalList(
                    title: 'Tv Popular',
                    imageList: homeScreenProvider.tvPopularimages,
                  ),
                  cHeight10,
                  MainTitileCard(
                    title: 'Treading Now',
                    imageList: homeScreenProvider.trendingImages,
                  ),
                 heightBox5,
                  NumberTitleCard(
                     imagesList: homeScreenProvider.topTenImages
                  ),
                  cHeight10,
                  MainTitileCard(
                    imageList:  homeScreenProvider.upcomingImages,
                    title: 'Up comming',
                  ),
                  HorizontalList(
                    title: 'Popular Moveis',
                    imageList: homeScreenProvider.popularMoviesImages,
                  ),
                  // MainTitileCard(
                  //   imageList:  homeScreenProvider.popularMoviesImages,
                  //   title: 'Popular Moveis',
                  // ),
                  
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
