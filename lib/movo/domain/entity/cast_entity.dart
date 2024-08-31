import 'package:movo/movo/domain/entity/entity_base.dart';

class CastEntity extends Entity {
  final int gender, order;
  final String department;

  const CastEntity({
    required super.id,
    required super.img,
    required super.name,
    required super.rate,
    required this.order,
    required this.gender,
    required super.character,
    required this.department,
    // required super.runTime,
    required super.releaseDate,
  });

  @override
  List<Object?> get props => [
        id,
        order,
        gender,
        name,
        img,
        character,
        department,
        rate,
        releaseDate,
      ];
}
