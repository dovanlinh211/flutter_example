class Repository {
  final moviesApiProvider = MovieApiProvider();
  Future<ItemModel> fetchAllMovies() => moviesApiProvider.fetchMovieList();
}
