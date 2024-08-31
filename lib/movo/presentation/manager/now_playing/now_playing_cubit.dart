import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movo/movo/domain/entity/movie_entity.dart';
import 'package:movo/movo/domain/usecase/get_movie.dart';

part 'now_playing_state.dart';

class NowPlayingCubit extends Cubit<NowPlayingState> {
  NowPlayingCubit(this._getNowPlaying) : super(NowPlayingInitialState());
  int page = 1;
  final GetMovie _getNowPlaying;

  Future<void> get() async {
    emit(NowPlayingLoadingState());
    await _getNowPlaying
        .call(page: page, endPoint: "movie/now_playing?page=$page}")
        .then((result) => result.fold(
              (failure) => emit(NowPlayingErrorState(failure.ex)),
              (movies) => emit(NowPlayingSuccessState(movies)),
            ));
  }
}
