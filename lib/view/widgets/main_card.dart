import 'package:flutter/material.dart';
import 'package:netflix/helpers/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: constRadius10,
        image: DecorationImage(image: 
        NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzJTkdPVAsp-i9GdusgSvj6LztRYsDQgzZkw&usqp=CAU')
        )
      ),
    );
  }
}