import 'package:flutter/material.dart';
import 'package:movo/generated/l10n.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'lang_state.dart';

class LangCubit extends Cubit<LangState> {
  LangCubit() : super(LangLoadingState());  
  int checked = 0;
  final Box _box = Hive.box<dynamic>("preference");
  final List<String> langs = ["English", "العربية"];

  Future<void> startupLang() async {
    emit(LangLoadingState());
    Map currentLang = await await _box.get(
      "lang",
      defaultValue: {"lang_code": "en", "country_code": "EG"},
    );
    emit(LangChangedState(
      currentLang["lang_code"],
      currentLang["country_code"],
    ));
    int currenIndex = S.delegate.supportedLocales.indexOf(
      Locale(currentLang["lang_code"]),
    );
    checked = currenIndex < 0 ? 0 : currenIndex;
  }

  Future<void> changeLang({
    required int index,
    String? countryCode,
    required String langCode,
  }) async {
    emit(LangLoadingState());
    await _box.put(
      "lang",
      {"lang_code": langCode, "country_code": countryCode},
    );
    emit(LangChangedState(langCode, countryCode));
  }

  bool isEn() =>
      _box.get(
        "lang",
        defaultValue: {"lang_code": "en", "country_code": "EG"},
      )["lang_code"] ==
      'en';
}
