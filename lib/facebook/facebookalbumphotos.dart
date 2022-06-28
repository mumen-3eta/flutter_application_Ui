import 'package:flutter/cupertino.dart';

class FacebookPhotos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14),
      child: Container(
          width: 10000,
          height: 200,
          decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                  image: AssetImage('assets/images/fun.jpg'),
                  fit: BoxFit.cover))),
    );
  }
}
