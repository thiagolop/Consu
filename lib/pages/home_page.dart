import 'package:flutter/material.dart';
import 'package:flutter_application_2/controllers/movie_controller.dart';
import 'package:flutter_application_2/models/movie_model.dart';
import 'package:flutter_application_2/repositories/movies_repository_imp.dart';
import 'package:flutter_application_2/service/dio_service_imp.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final MovieController _moviecontroller = MovieController(MoviesRepositoryImp(DioServiceImp()));
  @override
  void initState() {
    super.initState();
    _moviecontroller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder<Movies?>(
      valueListenable: _moviecontroller.movies,
      builder: (_, movies, __) {
        return movies != null
            ? ListView.builder(
                itemCount: movies.items.length,
                itemBuilder: (_, index) => Text(movies.items[index].title),
              )
            : const Center(child: Text('Erro'));
      },
    ));
  }
}
