import 'package:web_admin_dashboard/domain/entities/user.dart';
import 'package:web_admin_dashboard/domain/repositories/user_repository.dart';

abstract class GetUsersUseCase {
  Future<List<User>> getUsers();
}

class ApiGetUsersUseCase implements GetUsersUseCase {
  final UserRepository _userRepository;

  ApiGetUsersUseCase(
    this._userRepository,
  );

  @override
  Future<List<User>> getUsers() => _userRepository.getUsers();
}
