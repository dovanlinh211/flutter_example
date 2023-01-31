import 'dart:convert';
import 'package:mvvm_api/models/post_model.dart';
import 'package:mvvm_api/repositories/posts_repo.dart';
import 'package:http/http.dart' as http;

class PostsAPI extends PostRepo {
  @override
  Future<List<PostModel>> getAllPosts() async {
    List<PostModel> posts = [];
    try {
      var response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
      print(response.body);
      var list = jsonDecode(response.body) as List;
      print(list);
      posts = list.map((post) => PostModel.fromJson(post)).toList();
      print(posts);
    } catch (e) {
      print(e);
    }
    return posts;
  }

  @override
  Future<PostModel> getPostById(int id) {
    throw UnimplementedError();
  }
}
