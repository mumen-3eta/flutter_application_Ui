import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FacebookPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/fun.jpg'),
                      fit: BoxFit.cover))),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'Jordan Praise',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'updated his cover photo',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          const Spacer(),
          const Icon(
            Icons.more_horiz,
            color: Colors.grey,
            size: 20,
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
        child: Row(
          children: const [
            Text(
              '3 mins ago',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
            width: 10000,
            height: 200,
            decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage('assets/images/fun.jpg'),
                    fit: BoxFit.cover))),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            Stack(
              alignment: const Alignment(-5.9, 0),
              children: [
                Image.asset(
                  'assets/icons/thumbs.png',
                  width: 25,
                ),
                Image.asset(
                  'assets/icons/hear.png',
                  width: 32,
                ),
              ],
            ),
            const Text(
              '400',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            const Spacer(),
            const Text(
              '122 comments',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ],
        ),
      ),
      const Divider(
        thickness: 1,
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/icons/like.png',
                  width: 20,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text('Like',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    )),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'assets/icons/comment.png',
                  color: Colors.grey,
                  width: 20,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text('Comment',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    )),
              ],
            ),
          ],
        ),
      )
    ]);
  }
}
