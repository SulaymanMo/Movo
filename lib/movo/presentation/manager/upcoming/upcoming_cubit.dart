import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movo/movo/domain/entity/movie_entity.dart';
import 'package:movo/movo/domain/usecase/get_movie.dart';

part 'upcoming_state.dart';

class UpcomingCubit extends Cubit<UpcomingState> {
  int page = 1;
  final GetMovie _getUpComing;
  UpcomingCubit(this._getUpComing) : super(UpcomingInitialState());

  Future<void> get() async {
    emit(UpcomingLoadingState());
    await _getUpComing
        .call(page: page, endPoint: 'movie/upcoming?page=$page')
        .then((result) => result.fold(
              (failure) => emit(UpcomingErrorState(failure.ex)),
              (movies) => emit(UpcomingSuccessState(movies)),
            ));
  }
}
