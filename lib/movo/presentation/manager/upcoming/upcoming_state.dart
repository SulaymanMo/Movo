part of 'upcoming_cubit.dart';

@immutable
abstract class UpcomingState {
  const UpcomingState();
}

class UpcomingInitialState extends UpcomingState {}

class UpcomingLoadingState extends UpcomingState {}

class UpcomingSuccessState extends UpcomingState {
  final List<MovieEntity> movies;
  const UpcomingSuccessState(this.movies);
}

class UpcomingErrorState extends UpcomingState {
  final String error;
  const UpcomingErrorState(this.error);
}
