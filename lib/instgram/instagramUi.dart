import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/data.dart';
import 'package:flutter_application_1/instgram/NavigationConstants.dart';
import 'package:flutter_application_1/instgram/addPost.dart';
import 'package:flutter_application_1/instgram/postWidget.dart';
import 'package:flutter_application_1/models/post.dart';

class InstagramUi extends StatefulWidget {
  @override
  State<InstagramUi> createState() => _InstagramUiState();
}

class _InstagramUiState extends State<InstagramUi> {
  setStateFunction() {
    setState(() {});
  }

  String url =
      'https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            NavigationConstants.navigateToWidget(AddPost(setStateFunction));
          },
        ),
        appBar: AppBar(
          title: const Text('Instagram'),
        ),
        body: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return PostWidget(list[index].user, list[index].post);
            }));

    /* child: SingleChildScrollView(
        child: Column(
            children: list.map((e) => PostWidget(e.user, e.post)).toList()),
      )),*/
  }
}
