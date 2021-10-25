import 'package:web_admin_dashboard/domain/entities/group.dart';
import 'package:web_admin_dashboard/domain/repositories/group_repository.dart';

abstract class UpdateGroupUseCase {
  Future<void> updateGroup(Group group);
}

class ApiUpdateGroupUseCase implements UpdateGroupUseCase {
  final GroupRepository _groupRepository;

  ApiUpdateGroupUseCase(
    this._groupRepository,
  );

  @override
  Future<void> updateGroup(Group group) => _groupRepository.updateGroup(group);
}
