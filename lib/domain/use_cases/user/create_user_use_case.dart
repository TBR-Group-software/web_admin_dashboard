import 'package:web_admin_dashboard/domain/entities/user.dart';
import 'package:web_admin_dashboard/domain/repositories/user_repository.dart';

abstract class CreateUserUseCase {
  Future<void> createUser(User user);
}

class ApiCreateUserUseCase implements CreateUserUseCase {
  final UserRepository _userRepository;

  ApiCreateUserUseCase(
    this._userRepository,
  );

  @override
  Future<void> createUser(User user) => _userRepository.createUser(user);
}
