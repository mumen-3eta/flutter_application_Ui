import 'dart:io';

class Post {
  String? content;
  String? image;
  File? file;

  Post.fromFile(this.file, this.content);

  Post.fromJason(Map<String, dynamic> data) {
    content = data['content'];
    image = data['image'];
  }
}
