import 'package:web_admin_dashboard/data/gateways/api_iot_gateway.dart';
import 'package:web_admin_dashboard/data/models/iot_dto.dart';
import 'package:web_admin_dashboard/domain/entities/iot.dart';
import 'package:web_admin_dashboard/domain/repositories/iot_repository.dart';
import 'package:web_admin_dashboard/factories/factory.dart';

class ApiIotRepository implements IotRepository {
  final ApiIotGateWay _apiIotGateWay;
  final Factory<Iot, IotDto> _iotFromDtoFactory;
  final Factory<IotDto, Iot> _iotToDtoFactory;

  ApiIotRepository(
    this._apiIotGateWay,
    this._iotFromDtoFactory,
    this._iotToDtoFactory,
  );

  @override
  Future<List<Iot>> getIots() async {
    final List<IotDto> iotsDto = await _apiIotGateWay.getIots();
    return iotsDto.map((IotDto e) => _iotFromDtoFactory.create(e)).toList();
  }

  @override
  Future<Iot> getIot(int id) async {
    final IotDto iotDto = await _apiIotGateWay.getIot(id);
    return _iotFromDtoFactory.create(iotDto);
  }

  @override
  Future<void> createIot(Iot iot) =>
      _apiIotGateWay.createIot(_iotToDtoFactory.create(iot));

  @override
  Future<void> updateIot(Iot iot) =>
      _apiIotGateWay.updateIot(_iotToDtoFactory.create(iot));

  @override
  Future<void> deleteIot(int id) => _apiIotGateWay.deleteIot(id);
}
