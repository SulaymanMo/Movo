import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/entity/movie_entity.dart';
import '../../../domain/usecase/get_search.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this._getSearch) : super(InitialState());
  int page = 1;
  final GetSearch _getSearch;

  Future<void> get(String name) async {
    emit(LoadingState());
    await _getSearch.call(page, name: name).then(
          (result) => result.fold(
            (failure) => emit(ErrorState(failure.ex)),
            (data) => emit(SuccessState(data)),
          ),
        );
  }
}
