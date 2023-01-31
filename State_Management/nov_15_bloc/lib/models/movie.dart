class ItemModel {
  int? _page;
  int? _total_movies;
  int? _total_pages;
  List<_Movie>? _movies = [];

  ItemModel.fromJson(Map<String, dynamic> parseJson) {
    _page = parseJson["page"];
    _total_movies = parseJson["total_movies"];
    _total_pages = parseJson["total_pages"];

    //from json to model with list attributes
    List<_Movie> temp = [];
    for (int i = 0; i < parseJson["results"].length; i++) {
      _Movie movie = _Movie(parseJson["movie"][i]);
      temp.add(movie);
    }
    // an other way
    List<dynamic>.from(_movies!.map((e) => e));

    
    _movies = temp;
  }
}

class _Movie {
  int? _vote_count;
  int? _id;
  bool? _video;
  var _vote_average;
  String? _title;
  double? _popularity;
  String? _poster_path;
  String? _original_title;
  String? _original_language;
  List<int>? _genre_ids = [];
  String? _backdrop_path;
  bool? _adult;
  String? _overview;
  String? _release_date;

  _Movie(movie) {
    _vote_count = movie['vote_count'];
    _id = movie['id'];
    _video = movie['video'];
    _vote_average = movie['vote_average'];
    _title = movie['title'];
    _popularity = movie['popularity'];
    _poster_path = movie['poster_path'];
    _original_language = movie['original_language'];
    _original_title = movie['original_title'];
    for (int i = 0; i < movie['genre_ids'].length; i++) {
      _genre_ids?.add(movie['genre_ids'][i]);
    }
    _backdrop_path = movie['backdrop_path'];
    _adult = movie['adult'];
    _overview = movie['overview'];
    _release_date = movie['release_date'];
  }
}
