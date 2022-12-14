class Movies {
  Movies({
    required this.createdBy,
    required this.description,
    required this.favoriteCount,
    required this.id,
    required this.items,
    required this.itemCount,
    required this.iso_639_1,
    required this.name,
    required this.posterPath,
  });
  final String createdBy;
  final String description;
  final int favoriteCount;
  final String id;
  final List<Items> items;
  final int itemCount;
  final String iso_639_1;
  final String name;
  final String posterPath;

  factory Movies.fromJson(Map<String, dynamic> json) {
    return Movies(
      createdBy: json['created_by'] ?? '',
      description: json['description'] ?? '',
      favoriteCount: json['favorite_count'] ?? '',
      id: json['id'] ?? '',
      items: List.from(json['items']).map((e) => Items.fromJson(e)).toList(),
      itemCount: json['item_count'] ?? '',
      iso_639_1: json['iso_639_1'] ?? '',
      name: json['name'] ?? '',
      posterPath: json['poster_path'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['created_by'] = createdBy;
    data['description'] = description;
    data['favorite_count'] = favoriteCount;
    data['id'] = id;
    data['items'] = items.map((e) => e.toJson()).toList();
    data['item_count'] = itemCount;
    data['iso_639_1'] = iso_639_1;
    data['name'] = name;
    data['poster_path'] = posterPath;
    return data;
  }
}

class Items {
  Items({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.mediaType,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });
  final bool adult;
  final String backdropPath;
  final List<int> genreIds;
  final int id;
  final String mediaType;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final String releaseDate;
  final String title;
  final bool video;
  final double? voteAverage;
  final int voteCount;

  factory Items.fromJson(Map<String, dynamic> json) {
    return Items(
      adult: json['adult'],
      backdropPath: json['backdrop_path'],
      genreIds: List.castFrom<dynamic, int>(json['genre_ids']),
      id: json['id'],
      mediaType: json['media_type'],
      originalLanguage: json['original_language'],
      originalTitle: json['original_title'],
      overview: json['overview'],
      popularity: json['popularity'],
      posterPath: json['poster_path'],
      releaseDate: json['release_date'],
      title: json['title'],
      video: json['video'],
      voteAverage: double.tryParse(json['vote_average'].toString()),
      voteCount: json['vote_count'],
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['adult'] = adult;
    data['backdrop_path'] = backdropPath;
    data['genre_ids'] = genreIds;
    data['id'] = id;
    data['media_type'] = mediaType;
    data['original_language'] = originalLanguage;
    data['original_title'] = originalTitle;
    data['overview'] = overview;
    data['popularity'] = popularity;
    data['poster_path'] = posterPath;
    data['release_date'] = releaseDate;
    data['title'] = title;
    data['video'] = video;
    data['vote_average'] = voteAverage;
    data['vote_count'] = voteCount;
    return data;
  }
}
