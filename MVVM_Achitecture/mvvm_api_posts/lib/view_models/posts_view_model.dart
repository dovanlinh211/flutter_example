import 'package:mvvm_api/models/post_model.dart';
import 'package:mvvm_api/repositories/posts_local.dart';
import 'package:mvvm_api/repositories/posts_repo.dart';
import 'package:mvvm_api/view_models/post_view_model.dart';

class PostsViewModel {
  final String title = "All Post";
  PostRepo? postRepo;
  PostsViewModel({required this.postRepo});
  Future<List<PostViewModel>> fetchAllPosts() async {
    List<PostModel> list = await postRepo!.getAllPosts();
    return list.map((post) => PostViewModel(postModel: post)).toList();
  }
}
