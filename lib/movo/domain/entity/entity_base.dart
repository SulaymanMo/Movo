import 'package:equatable/equatable.dart';

abstract class Entity extends Equatable {
  final int id;
  final double rate;
  final int? runTime;
  final String img, name, releaseDate;
  final String? character, status, lang;

  const Entity({
    required this.id,
    required this.releaseDate,
    required this.name,
    required this.rate,
    required this.img,
    this.status,
    this.lang,
    this.runTime,
    this.character,
  });
}
