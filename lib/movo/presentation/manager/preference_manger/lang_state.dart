part of 'lang_cubit.dart';

sealed class LangState extends Equatable {
  const LangState();

  @override
  List<Object> get props => [];
}

class LangInitialState extends LangState {}

class LangLoadingState extends LangState {}

class LangChangedState extends LangState {
  final String langCode;
  final String? countryCode;
  const LangChangedState(this.langCode, this.countryCode);
}
