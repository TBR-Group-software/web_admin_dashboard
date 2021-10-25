import 'package:dio/dio.dart';
import 'package:web_admin_dashboard/data/gateways/api_provider.dart';
import 'package:web_admin_dashboard/data/models/iot_dto.dart';
import 'package:web_admin_dashboard/factories/factory.dart';

class ApiIotGateWay {
  final ApiProvider _apiProvider;
  final Factory<IotDto, Map<String, dynamic>> _iotDtoFromJsonFactory;
  final Factory<Map<String, dynamic>, IotDto> _iotJsonFromDtoFactory;

  ApiIotGateWay(
    this._apiProvider,
    this._iotDtoFromJsonFactory,
    this._iotJsonFromDtoFactory,
  );

  Future<List<IotDto>> getIots() async {
    final Response<dynamic> response = await _apiProvider.apiProviderGet(
      'iots',
    );

    final List<dynamic> data = response.data as List<dynamic>;
    return data
        .map((dynamic e) =>
            _iotDtoFromJsonFactory.create(e as Map<String, dynamic>))
        .toList();
  }

  Future<IotDto> getIot(int id) async {
    final Response<dynamic> response = await _apiProvider.apiProviderGet(
      'iot/' + id.toString(),
    );

    return _iotDtoFromJsonFactory.create(response.data as Map<String, dynamic>);
  }

  Future<void> createIot(IotDto iotDto) => _apiProvider.apiProviderPost(
        'iots',
        data: _iotJsonFromDtoFactory.create(iotDto),
      );

  Future<void> updateIot(IotDto iotDto) async {
    if (iotDto.id == null) {
      throw NullableIdException(
          'IotDto id must not be nullable in update data method');
    }

    await _apiProvider.apiProviderPut(
      'iot/' + iotDto.id.toString(),
      data: _iotJsonFromDtoFactory.create(iotDto),
    );
  }

  Future<void> deleteIot(int id) => _apiProvider.apiProviderDelete(
        'iot/' + id.toString(),
      );
}
