class Post {
  String? content;
  String? image;

  Post.fromJason(Map<String, dynamic> data) {
    content = data['content'];
    image = data['image'];
  }
}
