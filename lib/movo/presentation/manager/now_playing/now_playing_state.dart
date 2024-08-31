part of 'now_playing_cubit.dart';

@immutable
abstract class NowPlayingState {
  const NowPlayingState();
}
  
class NowPlayingInitialState extends NowPlayingState {}

class NowPlayingLoadingState extends NowPlayingState {}

class NowPlayingSuccessState extends NowPlayingState {
  final List<MovieEntity> movies;
  const NowPlayingSuccessState(this.movies);
}

class NowPlayingErrorState extends NowPlayingState {
  final String error;
  const NowPlayingErrorState(this.error);
}
