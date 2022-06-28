import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FacebookStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: 100,
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/fun.jpg'))),
        ),
        Container(
          width: 40,
          height: 40,
          margin: const EdgeInsets.all(10.0),
          child: const CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/nature.jpg',
            ),
          ),
        )
      ],
    );
  }
}
