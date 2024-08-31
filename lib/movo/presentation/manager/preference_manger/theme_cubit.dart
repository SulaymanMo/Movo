import 'package:hive_flutter/adapters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class ThemeCubit extends Cubit<bool> {
  ThemeCubit() : super(false);
  bool switched = false;
  final Box _box = Hive.box<dynamic>("preference");

  Future<void> checkMode() async {
    if (await _box.get("dark_mode", defaultValue: false)) {
      switched = !switched;
      emit(!state);
    } else {
      emit(!state);
    }
    FlutterNativeSplash.remove();
  }

  Future<void> switchMode() async {
    switched = !switched;
    emit(!state);
    await _box.put("dark_mode", switched);
    emit(!state);
  }
}
