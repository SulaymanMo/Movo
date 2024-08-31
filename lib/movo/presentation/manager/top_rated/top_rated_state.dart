part of 'top_rated_cubit.dart';

@immutable
abstract class TopRatedState {
  const TopRatedState();
}

class TopRatedInitialState extends TopRatedState {}

class TopRatedLoadingState extends TopRatedState {}

class TopRatedSuccessState extends TopRatedState {
  final List<MovieEntity> movies;
  const TopRatedSuccessState(this.movies);
}

class TopRatedErrorState extends TopRatedState {
  final String error;
  const TopRatedErrorState(this.error);
}
