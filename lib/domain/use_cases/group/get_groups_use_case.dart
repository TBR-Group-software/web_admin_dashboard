import 'package:web_admin_dashboard/domain/entities/group.dart';
import 'package:web_admin_dashboard/domain/repositories/group_repository.dart';

abstract class GetGroupsUseCase {
  Future<List<Group>> getGroups();
}

class ApiGetGroupsUseCase implements GetGroupsUseCase {
  final GroupRepository _groupRepository;

  ApiGetGroupsUseCase(
    this._groupRepository,
  );

  @override
  Future<List<Group>> getGroups() => _groupRepository.getGroups();
}
