import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movo/movo/domain/entity/movie_entity.dart';
import 'package:movo/movo/domain/usecase/get_movie.dart';

part 'top_rated_state.dart';

class TopRatedCubit extends Cubit<TopRatedState> {
  TopRatedCubit(this._getTopRated) : super(TopRatedInitialState());
  int page = 1;
  final GetMovie _getTopRated;

  Future<void> get() async {
    emit(TopRatedLoadingState());
    await _getTopRated
        .call(page: page, endPoint: "movie/top_rated?page=$page}")
        .then((result) => result.fold(
              (failure) => emit(TopRatedErrorState(failure.ex)),
              (movies) => emit(TopRatedSuccessState(movies)),
            ));
  }
}
