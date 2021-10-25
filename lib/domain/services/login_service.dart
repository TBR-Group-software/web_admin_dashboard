import 'package:web_admin_dashboard/domain/entities/user.dart';

abstract class LoginService {
  Future<User> authentication(String email, String password);
}