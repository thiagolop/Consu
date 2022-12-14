import 'package:flutter_application_2/models/movie_model.dart';

abstract class MovieRepository {
  Future<Movies?> getMovies();
}
