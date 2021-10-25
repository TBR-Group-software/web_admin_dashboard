import 'package:web_admin_dashboard/data/models/user_dto.dart';
import 'package:web_admin_dashboard/factories/factory.dart';

class UserDtoFromJsonFactory implements Factory<UserDto, Map<String, dynamic>> {
  @override
  UserDto create(Map<String, dynamic> arg) => UserDto(
        id: arg['user_id'] as int,
        email: arg['email'] as String,
        role: arg['user_role'] as String,
        fullName: arg['full_name'] as String,
      );
}
