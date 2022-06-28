import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/post.dart';
import '../models/user.dart';

class PostWidget extends StatelessWidget {
  late User user;
  late Post post;
  PostWidget(this.user, this.post);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(user.image ?? ""),
                          fit: BoxFit.cover))),
              const SizedBox(
                width: 10,
              ),
              Text(
                user.name ?? "",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              const Spacer(),
              const Icon(Icons.more_vert)
              //Image.asset('assets/icons/menu.png', width: 20),
            ],
          ),
        ),
        SizedBox(
          height: 300,
          width: 10000,
          child: Image.network(
            post.image ?? "",
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: const EdgeInsets.all(5),
          child: Row(
            children: [
              Image.asset('assets/icons/heart.png', width: 20),
              const SizedBox(
                width: 10,
              ),
              Image.asset('assets/icons/chat.png', width: 24),
              const SizedBox(
                width: 10,
              ),
              Image.asset('assets/icons/send.png', width: 20),
              const Spacer(),
              Image.asset('assets/icons/save-instagram.png', width: 20)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(6),
          child: Text(post.content ?? ""),
        )
      ],
    );
  }
}
