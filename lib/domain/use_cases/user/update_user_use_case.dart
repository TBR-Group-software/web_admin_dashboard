import 'package:web_admin_dashboard/domain/entities/user.dart';
import 'package:web_admin_dashboard/domain/repositories/user_repository.dart';

abstract class UpdateUserUseCase {
  Future<void> updateUser(User user);
}

class ApiUpdateUserUseCase implements UpdateUserUseCase {
  final UserRepository _userRepository;

  ApiUpdateUserUseCase(
    this._userRepository,
  );

  @override
  Future<void> updateUser(User user) => _userRepository.updateUser(user);
}
