import 'package:movo/movo/domain/entity/entity_base.dart';

class MovieEntity extends Entity {
  const MovieEntity({
    required super.id,
    required super.img,
    required super.name,
    required super.rate,
    super.lang,
    required this.overview,
    required this.detailImg,
    required super.releaseDate,
    required super.runTime,
  });

  final String overview,  detailImg;

  @override
  List<Object?> get props => [
        id,
        rate,
        img,
        lang,
        name,
        overview,
        detailImg,
        releaseDate,
      ];
}
