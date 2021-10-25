import 'package:web_admin_dashboard/domain/entities/group.dart';
import 'package:web_admin_dashboard/domain/repositories/group_repository.dart';

abstract class CreateGroupUseCase {
  Future<void> createGroup(Group group);
}

class ApiCreateGroupUseCase implements CreateGroupUseCase {
  final GroupRepository _groupRepository;

  ApiCreateGroupUseCase(
    this._groupRepository,
  );

  @override
  Future<void> createGroup(Group group) => _groupRepository.createGroup(group);
}
