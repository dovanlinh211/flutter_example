import 'package:flutter/material.dart';
import 'package:mvvm_api/repositories/posts_api.dart';
import 'package:mvvm_api/view_models/post_view_model.dart';
import 'package:mvvm_api/view_models/posts_view_model.dart';

class PostsView extends StatelessWidget {
  PostsView({super.key});

  // Dependency Injection
  var postViewModel = PostsViewModel(postRepo: PostsAPI());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(postViewModel.title),
        ),
        body: FutureBuilder<List<PostViewModel>>(
            future: postViewModel.fetchAllPosts(),
            builder: ((context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              }
              else {
                var posts= snapshot.data;
                return ListView.builder(
                  itemCount: posts?.length,
                  itemBuilder:((context, index) => ListTile(
                    title: Text(posts![index].title),
                    subtitle: Text(posts![index].body),
                  )) );
              }

            })));
  }
}
