import 'package:flutter/material.dart';
import 'package:netflix/helpers/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
   return Container(
    margin: EdgeInsetsDirectional.symmetric(horizontal: 5),
      width: 130,
      height: 250,
      decoration: BoxDecoration(
          image: const DecorationImage(image: NetworkImage('https://m.media-amazon.com/images/I/81IRYGO1byL._AC_UL480_FMwebp_QL65_.jpg'),fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(5)),
    );
  }
}