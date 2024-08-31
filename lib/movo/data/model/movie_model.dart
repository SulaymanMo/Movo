import 'package:movo/movo/domain/entity/movie_entity.dart';

class MovieModel extends MovieEntity {
  const MovieModel({
    required super.id,
    required super.img,
    required super.rate,
    required super.lang,
    required super.name,
    required super.overview,
    required super.detailImg,
    required super.releaseDate,
    required super.runTime,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      id: json["id"],
      img: json["poster_path"] ?? '',
      rate: json["vote_average"] ?? 0,
      runTime: json["runtime"],
      lang: json["original_language"],
      name: json["title"] ?? '',
      overview: json["overview"] ?? '',
      detailImg: json["backdrop_path"] ?? json["poster_path"] ?? '',
      releaseDate: (json["release_date"] as String).isNotEmpty
          ? DateTime.parse(json["release_date"]).year.toString()
          : '',
    );
  }
}
