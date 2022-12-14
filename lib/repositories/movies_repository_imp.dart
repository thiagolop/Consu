import 'package:flutter_application_2/models/movie_model.dart';
import 'package:flutter_application_2/repositories/movie_repository.dart';
import 'package:flutter_application_2/service/dio_service.dart';
import 'package:flutter_application_2/utils/apis_utils.dart';

class MoviesRepositoryImp implements MovieRepository {
  final DioService _dioService;

  MoviesRepositoryImp(this._dioService);
  @override
  Future<Movies?> getMovies() async {
    try {
      var result = await _dioService.getDio().get(Api.REQUEST_MOVIE_LIST);
      return Movies.fromJson(result.data);
    } on Exception catch (e) {
      print(e);
      return null;
    }
  }
}

