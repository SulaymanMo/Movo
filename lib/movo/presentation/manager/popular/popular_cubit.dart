import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/entity/movie_entity.dart';
import 'package:movo/movo/domain/usecase/get_movie.dart';

part 'popular_state.dart';

class PopularCubit extends Cubit<PopularState> {
  PopularCubit(this._getPopular) : super(PopularInitialState());
  int page = 1;
  final GetMovie _getPopular;
  List<MovieEntity> paginate = [];

  Future<void> get() async { 
    emit(PopularLoadingState());
    await _getPopular
        .call(page: page, endPoint: 'movie/popular?page=$page')
        .then(
          (result) => result.fold(
            (failure) {
              emit(PopularErrorState(failure.ex));
            },
            (movies) {
              emit(PopularSuccessState(movies));
            },
          ),
        );
  }
}
