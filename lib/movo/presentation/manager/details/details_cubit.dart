import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movo/movo/domain/entity/cast_entity.dart';
import 'package:movo/movo/domain/entity/movie_entity.dart';
import 'package:movo/movo/domain/usecase/get_cast.dart';
import 'package:movo/movo/domain/usecase/get_images.dart';
import 'package:movo/movo/domain/usecase/ge_details_usecase.dart';
import 'package:movo/movo/domain/entity/movie_details_entity.dart';
import 'package:movo/movo/domain/usecase/get_similar.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit({
    required this.cast,
    required this.images,
    required this.details,
    required this.similar,
  }) : super(DetailsInitialState());

  int page = 1;
  final GetCast cast;
  final GetImages images;
  final GetDetails details;
  final GetSimilar similar;

  Future<void> getDetails(int id) async {
    emit(DetailsLoadingState());
    final result = await details.call(id);
    result.fold(
      (failure) => emit(DetailsErrorState(failure.ex)),
      (details) async {
        emit(DetailsSuccessState(details));
        await getCast(id);
      },
    );
  }

  Future<void> getCast(int id) async {
    emit(CastLoadingState());
    final result = await cast.call(id);
    result.fold(
      (failure) => emit(CastErrorState(failure.ex)),
      (cast) {
        emit(CastSuccessState(cast));
      },
    );
  }

  Future<void> getSimilar(int id) async {
    emit(SimilarLoadingState());
    await similar.call(page, id: id).then(
          (result) => result.fold(
            (failure) => emit(SimilarErrorState(failure.ex)),
            (similar) => emit(SimilarSuccessState(similar)),
          ),
        );
  }

  Future<void> getAlbum(int id) async {
    emit(AlbumLoadingState());
    await images.call(id).then(
          (result) => result.fold(
            (failure) => emit(AlbumErrorState(failure.ex)),
            (album) => emit(AlbumSuccessState(album)),
          ),
        );
  }
}
