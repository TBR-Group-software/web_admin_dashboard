import 'package:web_admin_dashboard/data/models/group_dto.dart';
import 'package:web_admin_dashboard/data/models/iot_dto.dart';
import 'package:web_admin_dashboard/data/models/user_dto.dart';
import 'package:web_admin_dashboard/domain/entities/group.dart';
import 'package:web_admin_dashboard/domain/entities/iot.dart';
import 'package:web_admin_dashboard/domain/entities/user.dart';
import 'package:web_admin_dashboard/factories/factory.dart';

class IotFromDtoFactory implements Factory<Iot, IotDto> {
  final Factory<User, UserDto> _userFactory;
  final Factory<Group, GroupDto> _groupFactory;

  IotFromDtoFactory(
    this._userFactory,
    this._groupFactory,
  );

  @override
  Iot create(IotDto arg) {
    return Iot(
      id: arg.id,
      user: arg.userDto != null ? _userFactory.create(arg.userDto!) : null,
      group: arg.groupDto != null ? _groupFactory.create(arg.groupDto!) : null,
      longitude: arg.longitude,
      latitude: arg.latitude,
      lastIotChangesTimeUnix: arg.lastIotChangesTimeUnix,
      state: arg.state,
      type: arg.type,
    );
  }
}
