import 'dart:convert';

import 'package:bloc_moviedb/models/post.dart';
import 'package:http/http.dart' as http;

class PostProvider {
  Future<List<Post>> fetchAllPost() async {
    print("entered");
    final response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/comments"));
    print(response.body.toString());
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      var jsonMap = jsonDecode(response.body) as List<dynamic>;
      print(jsonMap);
      List<Post> allPost =
          jsonMap.map((value) => Post.fromJson(value)).toList();
      // jsonMap.forEach((key, value) {
      //   Post singlePost = Post.fromJson(json)
      //   Post.fromJson(key,value)
      //   allPost.add(value)
      //   Post.fromJson() })
      // return Post.fromJson();
      return allPost;
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }
}
