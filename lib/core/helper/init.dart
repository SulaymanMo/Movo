import 'package:flutter/widgets.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:movo/core/helper/observer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movo/core/helper/service_locator.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> init() async {
  FlutterNativeSplash.preserve(
    widgetsBinding: WidgetsFlutterBinding.ensureInitialized(),
  );
  await Hive.initFlutter();
  await Hive.openBox<dynamic>("preference");
  // Hive.registerAdapter<MovieModel>(MovieAdapter());
  // await Hive.openBox<List>("movies");
  serviceLocator();
  Bloc.observer = Observer();
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
}