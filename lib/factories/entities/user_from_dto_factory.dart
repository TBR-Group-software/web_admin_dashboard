import 'package:web_admin_dashboard/data/models/user_dto.dart';
import 'package:web_admin_dashboard/domain/entities/user.dart';
import 'package:web_admin_dashboard/factories/factory.dart';

class UserFromDtoFactory implements Factory<User, UserDto> {
  @override
  User create(UserDto arg) {
    return User(
      id: arg.id,
      email: arg.email,
      fullName: arg.fullName,
      role: arg.role,
      password: arg.password,
    );
  }
}
