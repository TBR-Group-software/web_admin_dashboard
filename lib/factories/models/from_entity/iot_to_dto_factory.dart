import 'package:web_admin_dashboard/data/models/group_dto.dart';
import 'package:web_admin_dashboard/data/models/iot_dto.dart';
import 'package:web_admin_dashboard/data/models/user_dto.dart';
import 'package:web_admin_dashboard/domain/entities/group.dart';
import 'package:web_admin_dashboard/domain/entities/iot.dart';
import 'package:web_admin_dashboard/domain/entities/user.dart';
import 'package:web_admin_dashboard/factories/factory.dart';

class IotToDtoFactory implements Factory<IotDto, Iot> {
  final Factory<UserDto, User> _userFactory;
  final Factory<GroupDto, Group> _groupFactory;

  IotToDtoFactory(
    this._userFactory,
    this._groupFactory,
  );

  @override
  IotDto create(Iot arg) {
    return IotDto(
      id: arg.id,
      userDto: arg.user != null ? _userFactory.create(arg.user!) : null,
      groupDto: arg.group != null ? _groupFactory.create(arg.group!) : null,
      longitude: arg.longitude,
      latitude: arg.latitude,
      lastIotChangesTimeUnix: arg.lastIotChangesTimeUnix,
      state: arg.state,
      type: arg.type,
    );
  }
}
