import 'generated/l10n.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:movo/core/helper/init.dart';
import 'package:movo/core/helper/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movo/core/theme/dark_theme.dart';
import 'package:movo/core/theme/light_theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:movo/movo/presentation/manager/preference_manger/lang_cubit.dart';
import 'package:movo/movo/presentation/manager/preference_manger/theme_cubit.dart';
import 'movo/presentation/manager/preference_manger/internet/internet_cubit.dart';

Future<void> main() async {
  await init();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<LangCubit>(
          create: (_) => LangCubit()..startupLang(),
        ),
        BlocProvider<ThemeCubit>(
          create: (_) => ThemeCubit()..checkMode(),
        ),
        BlocProvider<InternetCubit>(
          create: (_) => InternetCubit(),
        ),
      ],
      child: const Movo(),
    ),
  );
}

class Movo extends StatelessWidget {
  const Movo({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (_, orientation, deviceType) {
        return BlocBuilder<LangCubit, LangState>(
          builder: (_, state) {
            return MaterialApp.router(
              title: 'Movo',
              routerConfig: Routes.router,
              theme: lightTheme(),
              darkTheme: darkTheme(context),
              themeMode: context.watch<ThemeCubit>().switched
                  ? ThemeMode.dark
                  : ThemeMode.light,
              locale: state is LangChangedState
                  ? Locale(state.langCode, state.countryCode)
                  : const Locale('en', 'EG'),
              localizationsDelegates: const [
                S.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              debugShowCheckedModeBanner: false,
            );
          },
        );
      },
    );
  }
}
