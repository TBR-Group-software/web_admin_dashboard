import 'package:web_admin_dashboard/domain/entities/user.dart';
import 'package:web_admin_dashboard/domain/services/login_service.dart';

abstract class LoginUseCase {
  Future<User> login(String email, String password);
}

class ApiLoginUseCase implements LoginUseCase {
  final LoginService _loginService;

  ApiLoginUseCase(
    this._loginService,
  );

  @override
  Future<User> login(String email, String password) =>
      _loginService.authentication(email, password);
}
