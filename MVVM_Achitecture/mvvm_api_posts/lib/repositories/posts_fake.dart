import 'package:mvvm_api/models/post_model.dart';
import 'package:mvvm_api/repositories/posts_repo.dart';

class PostsFake extends PostRepo {
  @override
  Future<List<PostModel>> getAllPosts() {
    // TODO: implement getAllPosts
    throw UnimplementedError();
  }

  @override
  Future<PostModel> getPostById(int id) {
    // TODO: implement getPostById
    throw UnimplementedError();
  }
  
}