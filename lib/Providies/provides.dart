import 'package:provider/provider.dart';

import '../shared/movies_provider.dart';

class AppProviders {
  static final providers = [
    ChangeNotifierProvider<MoviesProvidies>(
      create: (_) => MoviesProvidies(),
    ),
    ChangeNotifierProvider<MoviesProvidies>(
      create: (_) => MoviesProvidies(),
    ),
  ];
}
