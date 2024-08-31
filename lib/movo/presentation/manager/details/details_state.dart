part of 'details_cubit.dart';

abstract class DetailsState {
  const DetailsState();
}

class DetailsInitialState extends DetailsState {}

// ! Details States
class DetailsSuccessState extends DetailsState {
  final MovieDetailsEntity details;
  const DetailsSuccessState(this.details);
}

class DetailsErrorState extends DetailsState {
  final String error;
  const DetailsErrorState(this.error);
}

class DetailsLoadingState extends DetailsState {}

// ! Cast States
class CastSuccessState extends DetailsState {
  final List<CastEntity> cast;
  const CastSuccessState(this.cast);
}

class CastErrorState extends DetailsState {
  final String error;
  const CastErrorState(this.error);
}

class CastLoadingState extends DetailsState {}

// ! Similar States
class SimilarSuccessState extends DetailsState {
  final List<MovieEntity> entity;
  const SimilarSuccessState(this.entity);
}

class SimilarErrorState extends DetailsState {
  final String error;
  const SimilarErrorState(this.error);
}

class SimilarLoadingState extends DetailsState {}

// ! Album States
class AlbumSuccessState extends DetailsState {
  final List<String> album;
  const AlbumSuccessState(this.album);
}

class AlbumErrorState extends DetailsState {
  final String error;
  const AlbumErrorState(this.error);
}

class AlbumLoadingState extends DetailsState {}
