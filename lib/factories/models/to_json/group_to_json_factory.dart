import 'package:web_admin_dashboard/data/models/group_dto.dart';
import 'package:web_admin_dashboard/factories/factory.dart';

class GroupToJsonFactory implements Factory<Map<String, dynamic>, GroupDto> {
  @override
  Map<String, dynamic> create(GroupDto arg) => <String, dynamic>{
        if (arg.userDto?.id != null) 'user_id': arg.userDto?.id,
        if (arg.updateDurationSeconds != null)
          'update_duration_seconds': arg.updateDurationSeconds,
        if (arg.lastIotChangesTimeUnix != null)
          'last_iot_changes_time_unix': arg.lastIotChangesTimeUnix,
      };
}
