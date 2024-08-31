part of 'internet_cubit.dart';

sealed class InternetState {
  const InternetState();
}

class InitialState extends InternetState {}

class LoadingState extends InternetState {}

class Connected extends InternetState {}

class Disconnected extends InternetState {}
