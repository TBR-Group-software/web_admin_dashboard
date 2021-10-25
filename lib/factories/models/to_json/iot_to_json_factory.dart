import 'package:web_admin_dashboard/data/models/iot_dto.dart';
import 'package:web_admin_dashboard/factories/factory.dart';

class IotToJsonFactory implements Factory<Map<String, dynamic>, IotDto> {
  @override
  Map<String, dynamic> create(IotDto arg) => <String, dynamic>{
        if (arg.userDto?.id != null) 'user_id': arg.userDto?.id,
        if (arg.groupDto?.id != null) 'group_id': arg.groupDto?.id,
        'longitude': arg.longitude,
        'latitude': arg.latitude,
        if (arg.lastIotChangesTimeUnix != null)
          'last_update_time_unix': arg.lastIotChangesTimeUnix,
        'iot_state': arg.state,
        'iot_type': arg.type,
      };
}
