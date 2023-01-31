import 'package:bloc_moviedb/models/post.dart';
import 'package:bloc_moviedb/resources/api_provider.dart';

class Repository {
  final postProvider = PostProvider();

  Future<List<Post>> fetchAllPost() => postProvider.fetchAllPost();
}
