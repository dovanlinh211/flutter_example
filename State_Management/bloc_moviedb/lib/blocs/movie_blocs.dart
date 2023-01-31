import 'package:bloc_moviedb/models/post.dart';
import 'package:bloc_moviedb/resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class PostBloc {
  final _repository = Repository();
  final _postToSink = PublishSubject<Post>();

  Observable<Post> get allPost => _postToSink.stream;

  fetchAllPostToSink() async {
    List<Post> allListPost = await _repository.fetchAllPost();
    allListPost.forEach((element) {
      _postToSink.sink.add(element);
    });
  }

  dispose() {
    _postToSink.close();
  }
}

final bloc = PostBloc();
