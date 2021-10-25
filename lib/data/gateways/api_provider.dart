import 'package:dio/dio.dart';
import 'package:web_admin_dashboard/data/models/jwt_dto.dart';
import 'package:web_admin_dashboard/factories/factory.dart';

class NullableIdException implements Exception {
  final String cause;

  NullableIdException(this.cause);
}

class ApiProvider {
  final Dio _dio;
  final Factory<JsonWebTokenDto, Map<String, dynamic>> _jsonWebTokenFactory;

  late JsonWebTokenDto _jsonWebTokenDto;

  ApiProvider(this._jsonWebTokenFactory) : _dio = Dio() {
    _dio.options.baseUrl = 'https://deforestation-proj.herokuapp.com/';
  }

  void _addTokenToDio(String token) {
    _dio.options.headers['Authorization'] = 'Bearer ' + token;
  }

  Future<void> _refreshToken() async {
    final Response<dynamic> response = await _dio.post<dynamic>(
      'refresh',
      data: <String, dynamic>{
        'token': _jsonWebTokenDto.refreshToken,
      },
    );
    _jsonWebTokenDto =
        _jsonWebTokenFactory.create(response.data as Map<String, dynamic>);
    _addTokenToDio(_jsonWebTokenDto.accessToken);
  }

  Future<Response<dynamic>> authentication(
      String email, String password) async {
    final Response<dynamic> response = await _dio.post<dynamic>(
      'sessions',
      data: <String, dynamic>{
        'email': email,
        'password': password,
      },
    );

    _jsonWebTokenDto =
        _jsonWebTokenFactory.create(response.data as Map<String, dynamic>);
    _addTokenToDio(_jsonWebTokenDto.accessToken);
    return response;
  }

  Future<Response<dynamic>> apiProviderGet(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    Response<dynamic> response;
    try {
      response =
          await _dio.get<dynamic>(path, queryParameters: queryParameters);
    } on Exception catch (_) {
      await _refreshToken();
      response =
          await _dio.get<dynamic>(path, queryParameters: queryParameters);
    }
    return response;
  }

  Future<Response<dynamic>> apiProviderPost(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    Response<dynamic> response;
    try {
      response = await _dio.post<dynamic>(
        path,
        data: data,
        queryParameters: queryParameters,
      );
    } on Exception catch (_) {
      await _refreshToken();
      response = await _dio.post<dynamic>(
        path,
        data: data,
        queryParameters: queryParameters,
      );
    }
    return response;
  }

  Future<Response<dynamic>> apiProviderPut(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    Response<dynamic> response;
    try {
      response = await _dio.put<dynamic>(
        path,
        data: data,
        queryParameters: queryParameters,
      );
    } on Exception catch (_) {
      await _refreshToken();
      response = await _dio.put<dynamic>(
        path,
        data: data,
        queryParameters: queryParameters,
      );
    }
    return response;
  }

  Future<Response<dynamic>> apiProviderDelete(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    Response<dynamic> response;
    try {
      response = await _dio.delete<dynamic>(
        path,
        queryParameters: queryParameters,
      );
    } on Exception catch (_) {
      await _refreshToken();
      response = await _dio.delete<dynamic>(
        path,
        queryParameters: queryParameters,
      );
    }
    return response;
  }
}
