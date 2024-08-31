part of 'search_cubit.dart';

@immutable
abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class InitialState extends SearchState {}

class LoadingState extends SearchState {}

class SuccessState extends SearchState {
  final List<MovieEntity> data;
  const SuccessState(this.data);
}

class ErrorState extends SearchState {
  final String error;
  const ErrorState(this.error);
}
