import 'package:movo/movo/domain/entity/cast_entity.dart';

class CastModel extends CastEntity {
  const CastModel({
    required super.id,
    required super.order,
    required super.gender,
    required super.name,
    required super.img,
    required super.character,
    required super.department,
    required super.rate,
    // required super.runTime,
    required super.releaseDate,
  });

  factory CastModel.fromJson(Map<String, dynamic> json) {
    return CastModel(
      id: json["id"],
      order: json["order"] ?? 0,
      gender: json["gender"] ?? 0,
      name: json["name"] ?? '',
      img: json["profile_path"] ?? '',
      releaseDate: json["release_date"] ?? '',
      character: json["character"] ?? '',
      department: json["known_for_department"] ?? '',
      rate: json["popularity"] ?? 0,
      // runTime: json["runtime"] ?? 0,
    );
  }
}
