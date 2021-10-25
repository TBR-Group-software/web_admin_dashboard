import 'package:dio/dio.dart';
import 'package:web_admin_dashboard/data/models/user_dto.dart';
import 'package:web_admin_dashboard/factories/factory.dart';

import 'api_provider.dart';

class ApiUserGateWay {
  final ApiProvider _apiProvider;
  final Factory<UserDto, Map<String, dynamic>> _userDtoFromJsonFactory;
  final Factory<Map<String, dynamic>, UserDto> _userJsonFromDtoFactory;

  ApiUserGateWay(
    this._apiProvider,
    this._userDtoFromJsonFactory,
    this._userJsonFromDtoFactory,
  );

  Future<UserDto> getUser(int id) async {
    final Response<dynamic> response = await _apiProvider.apiProviderGet(
      'user/' + id.toString(),
    );

    return _userDtoFromJsonFactory
        .create(response.data as Map<String, dynamic>);
  }

  Future<List<UserDto>> getUsers() async {
    final Response<dynamic> response =
        await _apiProvider.apiProviderGet('users');

    final List<dynamic> data = response.data as List<dynamic>;
    return data
        .map((dynamic e) =>
            _userDtoFromJsonFactory.create(e as Map<String, dynamic>))
        .toList();
  }

  Future<void> createUser(UserDto userDto) => _apiProvider.apiProviderPost(
        'users',
        data: _userJsonFromDtoFactory.create(userDto),
      );

  Future<void> updateUser(UserDto userDto) async {
    if (userDto.id == null) {
      throw NullableIdException(
          'UserDto id must not be nullable in update data method');
    }

    await _apiProvider.apiProviderPut(
      'user/' + userDto.id.toString(),
      data: _userJsonFromDtoFactory.create(userDto),
    );
  }

  Future<void> deleteUser(int id) =>
      _apiProvider.apiProviderDelete('user/' + id.toString());
}
