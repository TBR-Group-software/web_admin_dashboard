import 'package:dio/dio.dart';
import 'package:web_admin_dashboard/data/gateways/api_provider.dart';
import 'package:web_admin_dashboard/data/models/group_dto.dart';
import 'package:web_admin_dashboard/factories/factory.dart';

class ApiGroupGateWay {
  final ApiProvider _apiProvider;
  final Factory<GroupDto, Map<String, dynamic>> _groupDtoFromJsonFactory;
  final Factory<Map<String, dynamic>, GroupDto> _groupJsonFromDtoFactory;

  ApiGroupGateWay(
    this._apiProvider,
    this._groupDtoFromJsonFactory,
    this._groupJsonFromDtoFactory,
  );

  Future<List<GroupDto>> getGroups() async {
    final Response<dynamic> response = await _apiProvider.apiProviderGet(
      'groups',
    );

    final List<dynamic> data = response.data as List<dynamic>;
    return data
        .map((dynamic e) =>
            _groupDtoFromJsonFactory.create(e as Map<String, dynamic>))
        .toList();
  }

  Future<GroupDto> getGroup(int id) async {
    final Response<dynamic> response = await _apiProvider.apiProviderGet(
      'group/' + id.toString(),
    );

    return _groupDtoFromJsonFactory
        .create(response.data as Map<String, dynamic>);
  }

  Future<void> createGroup(GroupDto groupDto) => _apiProvider.apiProviderPost(
        'groups',
        data: _groupJsonFromDtoFactory.create(groupDto),
      );

  Future<void> updateGroup(GroupDto groupDto) async {
    if (groupDto.id == null) {
      throw NullableIdException(
          'GroupDto id must not be nullable in update data method');
    }

    await _apiProvider.apiProviderPut(
      'group/' + groupDto.id.toString(),
      data: _groupJsonFromDtoFactory.create(groupDto),
    );
  }

  Future<void> deleteGroup(int id) => _apiProvider.apiProviderDelete(
        'group/' + id.toString(),
      );
}
