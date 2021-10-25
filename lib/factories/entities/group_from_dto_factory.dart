import 'package:web_admin_dashboard/data/models/group_dto.dart';
import 'package:web_admin_dashboard/data/models/user_dto.dart';
import 'package:web_admin_dashboard/domain/entities/group.dart';
import 'package:web_admin_dashboard/domain/entities/user.dart';
import 'package:web_admin_dashboard/factories/factory.dart';

class GroupFromDtoFactory implements Factory<Group, GroupDto> {
  final Factory<User, UserDto> _userFactory;

  GroupFromDtoFactory(
    this._userFactory,
  );

  @override
  Group create(GroupDto arg) {
    return Group(
      id: arg.id,
      user: arg.userDto != null ? _userFactory.create(arg.userDto!) : null,
      updateDurationSeconds: arg.updateDurationSeconds,
      lastIotChangesTimeUnix: arg.lastIotChangesTimeUnix,
    );
  }
}
