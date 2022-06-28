import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/facebook/facebookalbumphotos.dart';

class FacebookAlum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.grey,
                  size: 20,
                ),
                Text('feed', style: TextStyle(fontSize: 15, color: Colors.grey))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
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
                    'Addedd 13 Photos to',
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
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
              child: Row(
                children: const [
                  Text(
                    'the Album  ',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  Text(
                    'Creative Photography',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 0, 0),
              child: Row(
                children: const [
                  Text(
                    '3 mins ago',
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
              child: Text('This is a new album for creative photography'),
            ),
            SizedBox(
              height: 500,
              child: ListView(
                children: [
                  FacebookPhotos(),
                  FacebookPhotos(),
                  FacebookPhotos(),
                  FacebookPhotos(),
                  FacebookPhotos(),
                  FacebookPhotos()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 14, 0, 0),
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'assets/icons/like.png',
                    width: 30,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 270,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.sentiment_satisfied_alt,
                            color: Colors.grey,
                            size: 33,
                          ),
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          hintText: 'Add a Comment',
                          hintStyle:
                              TextStyle(fontSize: 14, color: Colors.grey)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
