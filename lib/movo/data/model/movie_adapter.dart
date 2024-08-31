import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movo/movo/data/model/movie_model.dart';

@immutable
class MovieAdapter extends TypeAdapter<MovieModel> {
  @override
  int get typeId => 0;

  @override
  MovieModel read(BinaryReader reader) {
    return MovieModel(
      id: reader.readInt(),
      img: reader.readString(),
      rate: 0,
      lang: '',
      name: reader.readString(),
      overview: '',
      detailImg: '',
      releaseDate: '',
      runTime: 0,
    );
  }

  @override
  void write(BinaryWriter writer, MovieModel obj) {
    writer.writeInt(obj.id);
    writer.writeString(obj.img);
    writer.writeString(obj.name);
    // writer.writeString(obj.detailImg);
  }
}
