import 'package:web_admin_dashboard/domain/entities/iot.dart';
import 'package:web_admin_dashboard/domain/repositories/iot_repository.dart';

abstract class UpdateIotUseCase {
  Future<void> updateIot(Iot iot);
}

class ApiUpdateIotUseCase implements UpdateIotUseCase {
  final IotRepository _iotRepository;

  ApiUpdateIotUseCase(
    this._iotRepository,
  );

  @override
  Future<void> updateIot(Iot iot) => _iotRepository.updateIot(iot);
}
