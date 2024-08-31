import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:movo/core/helper/service_locator.dart';
import 'package:movo/movo/data/source/local/home_local.dart';

class Api extends Equatable {
  const Api(this._dio);

  final Dio _dio;
  static const String _baseUrl = 'https://api.themoviedb.org/3/';
  // ! _apiKey can be used instead of _token inside row_body.
  static const String _apiKey = 'api_key=b50ef783c01a58cbc7ab3a31c99227b1';
  static const String _token =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJiNTBlZjc4M2MwMWE1OGNiYzdhYjNhMzFjOTkyMjdiMSIsInN1YiI6IjYzZTI1YjgzY2I4MDI4MDA3YjZjOTZmNiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.XTCSwDZau9LgjMe9sgbED-GKhaC7pHDbg44DumPn0Ts';

  Future<Response<Map<String, dynamic>>> get(String endPoint) async {
    Map lang = getIt.get<HomeLocalImp>().getLang();
    return await _dio.get(
      '$_baseUrl$endPoint',
      queryParameters: {
        "language": '${lang["lang_code"]}-${"country_code"}',
      },
      options: Options(
        headers: {
          "accept": "application/json",
          "Authorization": "Bearer $_token",
        },
      ),
    );
  }

  Future<Response<Map<String, dynamic>>> post(String endPoint) async {
    return await _dio.post(
      '$_baseUrl$endPoint',
      options: Options(
        headers: {
          "accept": "application/json",
          "Authorization": "Bearer $_token",
          "content-type": "application/json",
        },
      ),
    );
  }

  @override
  List<Object> get props => [_dio, _baseUrl, _apiKey, _token];
}
