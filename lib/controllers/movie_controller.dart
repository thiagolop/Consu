import 'package:flutter/cupertino.dart';
import 'package:flutter_application_2/models/movie_model.dart';
import 'package:flutter_application_2/repositories/movie_repository.dart';
import 'package:flutter_application_2/shared/movies_provider.dart';
import 'package:provider/provider.dart';

class MovieController {
  final MovieRepository _movieRepository;
  MovieController(this._movieRepository);

  fetch(BuildContext context) async {
    Movies? result = await _movieRepository.getMovies();
    context.read<MoviesProvidies>().movies = result;
  }
}
