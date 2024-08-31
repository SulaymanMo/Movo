import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class Failure {
  final String ex;
  const Failure(this.ex);
}

class ServiceError extends Failure {
  const ServiceError._(super.ex);

  factory ServiceError(serviceError) {
    switch (serviceError.error) {
      case DioExceptionType.connectionTimeout:
        return const ServiceError._('Connect timeout.');
      case DioExceptionType.sendTimeout:
        return const ServiceError._('Send timeout.');
      case DioExceptionType.receiveTimeout:
        return const ServiceError._('Receive timeout.');
      case DioExceptionType.badResponse:
        debugPrint('helloooooooo');
        return ServiceError._fromResponse(
          serviceError.response?.statusCode,
          serviceError.response?.statusMessage,
        );
      case DioExceptionType.cancel:
        return const ServiceError._('Request was canceled.');
      case DioExceptionType.unknown:
        if (serviceError.message == 'SocketException') {
          return const ServiceError._('Check Internet.');
        } else {
          return const ServiceError._('Unknown error, Please try later!');
        }
      default:
        return const ServiceError._('Oops... Please try later!');
    }
  }

  factory ServiceError._fromResponse(int? code, data) {
    if (code == 400 || code == 401 || code == 403) {
      return ServiceError._(data['error']['message']);
    } else if (code == 404) {
      return const ServiceError._('Request Not Found.');
    } else if (code == 500) {
      return const ServiceError._('Internal Server Failure.');
    }
    return const ServiceError._('Oops... Response failure!');
  }
}
