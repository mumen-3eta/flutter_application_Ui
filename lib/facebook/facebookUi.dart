import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/facebook/facebbookpost.dart';
import 'package:flutter_application_1/facebook/facebookstory.dart';

class FacebookUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.camera_alt,
                      color: Colors.black,
                      size: 34,
                    ),
                    const SizedBox(
                      width: 270,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          contentPadding: EdgeInsets.all(8),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          hintText: 'Search',
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/icons/messenger.png',
                      width: 34,
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        children: const [
                          Text(
                            'Stories',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            'See Archive',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.grey,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          FacebookStory(),
                          FacebookStory(),
                          FacebookStory(),
                          FacebookStory(),
                          FacebookStory(),
                          FacebookStory(),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(
                      child: Column(
                        children: [
                          FacebookPost(),
                          FacebookPost(),
                          FacebookPost(),
                          FacebookPost(),
                          FacebookPost()
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 12),
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(
              Icons.web,
              color: Colors.blue,
              size: 35,
            ),
            Icon(
              Icons.group_outlined,
              color: Colors.grey[600],
              size: 35,
            ),
            Icon(
              Icons.smart_display_outlined,
              color: Colors.grey[600],
              size: 35,
            ),
            Icon(
              Icons.notifications_outlined,
              color: Colors.grey[600],
              size: 35,
            ),
            const CircleAvatar(
              backgroundImage: AssetImage("assets/images/fun.jpg"),
            )
          ],
        ),
      ),
    );
  }
}
