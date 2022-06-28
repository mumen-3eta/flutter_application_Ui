import 'package:flutter_application_1/models/post.dart';
import 'package:flutter_application_1/models/user.dart';

class postResponse {
  late User user;
  late Post post;

  postResponse.formJason(Map<String, dynamic> data) {
    user = User.fromJason(data['user']);
    post = Post.fromJason(data['post']);
  }
}
