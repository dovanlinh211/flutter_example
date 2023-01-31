import 'package:bloc_moviedb/blocs/movie_blocs.dart';
import 'package:bloc_moviedb/models/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bloc.fetchAllPostToSink();
    return Scaffold(
      appBar: AppBar(
        title: Text('Popular Movies'),
      ),
      body: StreamBuilder(
        stream: bloc.allPost,
        builder: (context, AsyncSnapshot<List<Post>> snapshot) {
          if (snapshot.hasData) {
            return buildList(snapshot);
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Widget buildList(AsyncSnapshot<List<Post>> snapshot) {
    return ListView.builder(
        itemCount: snapshot.data!.length,
        itemBuilder: (context, index) => Text(snapshot.data[index].body),
          );
        });
  }
}
