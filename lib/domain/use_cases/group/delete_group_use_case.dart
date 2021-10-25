import 'package:web_admin_dashboard/domain/repositories/group_repository.dart';

abstract class DeleteGroupUseCase {
  Future<void> deleteGroup(int id);
}

class ApiDeleteGroupUseCase implements DeleteGroupUseCase {
  final GroupRepository _groupRepository;

  ApiDeleteGroupUseCase(
    this._groupRepository,
  );

  @override
  Future<void> deleteGroup(int id) => _groupRepository.deleteGroup(id);
}
