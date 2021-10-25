import 'package:web_admin_dashboard/data/models/group_dto.dart';
import 'package:web_admin_dashboard/data/models/iot_dto.dart';
import 'package:web_admin_dashboard/data/models/user_dto.dart';
import 'package:web_admin_dashboard/factories/factory.dart';

class IotDtoFromJsonFactory implements Factory<IotDto, Map<String, dynamic>> {
  final Factory<UserDto, Map<String, dynamic>> _userDtoFormJsonFactory;
  final Factory<GroupDto, Map<String, dynamic>> _groupDtoFormJsonFactory;

  IotDtoFromJsonFactory(
    this._userDtoFormJsonFactory,
    this._groupDtoFormJsonFactory,
  );

  @override
  IotDto create(Map<String, dynamic> arg) => IotDto(
        id: arg['iot_id'] as int,
        userDto: arg['user'] != null
            ? _userDtoFormJsonFactory
                .create(arg['user'] as Map<String, dynamic>)
            : null,
        groupDto: arg['group'] != null
            ? _groupDtoFormJsonFactory
                .create(arg['group'] as Map<String, dynamic>)
            : null,
        longitude: arg['longitude'] as double,
        latitude: arg['latitude'] as double,
        lastIotChangesTimeUnix: arg['last_update_time_unix'] as int,
        state: arg['iot_state'] as String,
        type: arg['iot_type'] as String,
      );
}
