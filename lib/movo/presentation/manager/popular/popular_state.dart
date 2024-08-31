part of 'popular_cubit.dart';

@immutable
abstract class PopularState {
  const PopularState();
}

class PopularInitialState extends PopularState {}

class PopularLoadingState extends PopularState {}

class PopularSuccessState extends PopularState {
  final List<MovieEntity> movies;
  const PopularSuccessState(this.movies);
}

class PopularErrorState extends PopularState {
  final String error;
  const PopularErrorState(this.error);
}
