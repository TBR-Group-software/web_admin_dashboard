import 'package:web_admin_dashboard/data/models/user_dto.dart';
import 'package:web_admin_dashboard/factories/factory.dart';

class UserToJsonFactory implements Factory<Map<String, dynamic>, UserDto> {
  @override
  Map<String, dynamic> create(UserDto arg) => <String, dynamic>{
        if (arg.email != null) 'email': arg.email,
        if (arg.password != null) 'password': arg.password,
        if (arg.role != null) 'user_role': arg.role,
        if (arg.fullName != null) 'full_name': arg.fullName,
      };
}
