
import 'package:flutter/material.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(18)
        ),
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
    ]);
  }
}
