import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/helpers/colors.dart';
import 'package:netflix/helpers/constants.dart';
import 'package:netflix/view/search/widgets/search_idie.dart';
import 'package:netflix/view/search/widgets/search_result.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().darktheme,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              backgroundColor: AppColors().geryshade.withOpacity(0.4),
              prefixIcon:  Icon(
                CupertinoIcons.search,
                color: AppColors().geryshade,
              ),
              suffixIcon:  Icon(
                CupertinoIcons.xmark_circle_fill,
                color: AppColors().geryshade,
              ),
              style:  TextStyle(color: AppColors().whitetheme),
            ),
            cheight10,
            // Expanded(child: SearchIdelWidget()),
            const Expanded(child:SearchResultWidget() )
          ],
        ),
      )),
    );
  }
}
