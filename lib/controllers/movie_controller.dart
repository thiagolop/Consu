import 'package:flutter/cupertino.dart';
import 'package:flutter_application_2/models/movie_model.dart';
import 'package:flutter_application_2/repositories/movie_repository.dart';

class MovieController {
  final MovieRepository _movieRepository;
  MovieController(this._movieRepository);

  ValueNotifier<Movies?> movies = ValueNotifier<Movies?>(null);
  fetch() async {
    Movies? result = await _movieRepository.getMovies();
    movies.value = result;
  }
}
