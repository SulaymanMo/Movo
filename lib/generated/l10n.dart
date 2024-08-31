// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Movie`
  String get movie {
    return Intl.message(
      'Movie',
      name: 'movie',
      desc: '',
      args: [],
    );
  }

  /// `TV Show`
  String get tv_show {
    return Intl.message(
      'TV Show',
      name: 'tv_show',
      desc: '',
      args: [],
    );
  }

  /// `Trailer`
  String get trailer {
    return Intl.message(
      'Trailer',
      name: 'trailer',
      desc: '',
      args: [],
    );
  }

  /// `From your watchlist`
  String get watchlist {
    return Intl.message(
      'From your watchlist',
      name: 'watchlist',
      desc: '',
      args: [],
    );
  }

  /// `Your Watchlist is Empty`
  String get watchlist_empty {
    return Intl.message(
      'Your Watchlist is Empty',
      name: 'watchlist_empty',
      desc: '',
      args: [],
    );
  }

  /// `Save shows and movies to keep track of what you want to watch.`
  String get watchlist_empty_sub {
    return Intl.message(
      'Save shows and movies to keep track of what you want to watch.',
      name: 'watchlist_empty_sub',
      desc: '',
      args: [],
    );
  }

  /// `Browse popular movies`
  String get browse_popular {
    return Intl.message(
      'Browse popular movies',
      name: 'browse_popular',
      desc: '',
      args: [],
    );
  }

  /// `In Theaters`
  String get upcoming {
    return Intl.message(
      'In Theaters',
      name: 'upcoming',
      desc: '',
      args: [],
    );
  }

  /// `Watch soon on Movo`
  String get upcoming_sub {
    return Intl.message(
      'Watch soon on Movo',
      name: 'upcoming_sub',
      desc: '',
      args: [],
    );
  }

  /// `Popular`
  String get popular {
    return Intl.message(
      'Popular',
      name: 'popular',
      desc: '',
      args: [],
    );
  }

  /// `Popular movies just for you`
  String get popular_sub {
    return Intl.message(
      'Popular movies just for you',
      name: 'popular_sub',
      desc: '',
      args: [],
    );
  }

  /// `Top Rated`
  String get top_rated {
    return Intl.message(
      'Top Rated',
      name: 'top_rated',
      desc: '',
      args: [],
    );
  }

  /// `This weeks's top movies`
  String get tob_rated_sub {
    return Intl.message(
      'This weeks\'s top movies',
      name: 'tob_rated_sub',
      desc: '',
      args: [],
    );
  }

  /// `Now Playing`
  String get now_playing {
    return Intl.message(
      'Now Playing',
      name: 'now_playing',
      desc: '',
      args: [],
    );
  }

  /// `What to watch`
  String get what_to_watch {
    return Intl.message(
      'What to watch',
      name: 'what_to_watch',
      desc: '',
      args: [],
    );
  }

  /// `Behind the scene`
  String get behind_scense {
    return Intl.message(
      'Behind the scene',
      name: 'behind_scense',
      desc: '',
      args: [],
    );
  }

  /// `See all`
  String get see_all {
    return Intl.message(
      'See all',
      name: 'see_all',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong, Please try later!`
  String get error {
    return Intl.message(
      'Something went wrong, Please try later!',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get nav_home {
    return Intl.message(
      'Home',
      name: 'nav_home',
      desc: '',
      args: [],
    );
  }

  /// `Wishlist`
  String get nav_wishlist {
    return Intl.message(
      'Wishlist',
      name: 'nav_wishlist',
      desc: '',
      args: [],
    );
  }

  /// `Find`
  String get nav_search {
    return Intl.message(
      'Find',
      name: 'nav_search',
      desc: '',
      args: [],
    );
  }

  /// `You`
  String get nav_profile {
    return Intl.message(
      'You',
      name: 'nav_profile',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get nav_settings {
    return Intl.message(
      'Settings',
      name: 'nav_settings',
      desc: '',
      args: [],
    );
  }

  /// `Appereance`
  String get appereance {
    return Intl.message(
      'Appereance',
      name: 'appereance',
      desc: '',
      args: [],
    );
  }

  /// `Dark Theme`
  String get dark_theme {
    return Intl.message(
      'Dark Theme',
      name: 'dark_theme',
      desc: '',
      args: [],
    );
  }

  /// `Experiance light or dark theme.`
  String get dark_theme_subtitle {
    return Intl.message(
      'Experiance light or dark theme.',
      name: 'dark_theme_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `App Language`
  String get app_lang {
    return Intl.message(
      'App Language',
      name: 'app_lang',
      desc: '',
      args: [],
    );
  }

  /// `View original language when available.`
  String get app_lang_subtitle {
    return Intl.message(
      'View original language when available.',
      name: 'app_lang_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Choose your Language`
  String get choose_lang {
    return Intl.message(
      'Choose your Language',
      name: 'choose_lang',
      desc: '',
      args: [],
    );
  }

  /// `More like this`
  String get recommended {
    return Intl.message(
      'More like this',
      name: 'recommended',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
