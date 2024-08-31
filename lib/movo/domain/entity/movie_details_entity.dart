import 'package:movo/movo/domain/entity/entity_base.dart';

class MovieDetailsEntity extends Entity {
  final int budget, revenue;
  final List genres;
  final String overview, poster, tagline;

  const MovieDetailsEntity({
    required this.budget,
    required this.revenue,
    required this.genres,
    required this.overview,
    required this.poster,
    required this.tagline,
    required super.id,
    required super.name,
    required super.rate,
    required super.img,
    required super.status,
    required super.runTime,
    required super.releaseDate,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        rate,
        img,
        status,
        budget,
        runTime,
        revenue,
        genres,
        character,
        overview,
        poster,
        tagline,
        releaseDate,
      ];
}
