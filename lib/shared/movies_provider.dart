import 'package:flutter/material.dart';

import '../models/movie_model.dart';

class MoviesProvidies with ChangeNotifier {
  Movies? _movies;

  Movies? get movies => _movies;
  set movies(Movies? auth) {
    _movies = auth!;
    notifyListeners();
  }
}
