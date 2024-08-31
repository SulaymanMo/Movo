import 'package:movo/movo/domain/entity/movie_details_entity.dart';

class MovieDetailsModel extends MovieDetailsEntity {
  const MovieDetailsModel({
    required super.rate,
    required super.id,
    required super.budget,
    required super.runTime,
    required super.revenue,
    required super.genres,
    required super.name,
    required super.overview,
    required super.img,
    required super.poster,
    required super.tagline,
    required super.status,
    required super.releaseDate,
  });

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) {
    return MovieDetailsModel(
      rate: json["vote_average"] ?? 0,
      id: json["id"],
      budget: json["budget"] ?? 0,
      runTime: json["runtime"] ?? 0,
      revenue: json["revenue"] ?? 0,
      genres: json["genres"] ?? [],
      name: json["title"] ?? '',
      overview: json["overview"] ?? 'No here',
      img: json["backdrop_path"] ?? json["poster_path"] ?? '',
      poster: json["poster_path"] ?? '',
      releaseDate: (json["release_date"] as String).isNotEmpty
          ? DateTime.parse(json["release_date"]).year.toString()
          : '',
      tagline: json["tagline"] ?? '',
      status: json["status"] ?? '',
    );
  }
}
