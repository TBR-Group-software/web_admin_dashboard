import 'package:web_admin_dashboard/data/models/group_dto.dart';
import 'package:web_admin_dashboard/data/models/user_dto.dart';
import 'package:web_admin_dashboard/domain/entities/group.dart';
import 'package:web_admin_dashboard/domain/entities/user.dart';
import 'package:web_admin_dashboard/factories/factory.dart';

class GroupToDtoFactory implements Factory<GroupDto, Group> {
  final Factory<UserDto, User> _userFactory;

  GroupToDtoFactory(
    this._userFactory,
  );

  @override
  GroupDto create(Group arg) {
    return GroupDto(
      id: arg.id,
      userDto: arg.user != null ? _userFactory.create(arg.user!) : null,
      updateDurationSeconds: arg.updateDurationSeconds,
      lastIotChangesTimeUnix: arg.lastIotChangesTimeUnix,
    );
  }
}
