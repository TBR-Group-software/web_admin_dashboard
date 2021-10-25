import 'package:web_admin_dashboard/data/gateways/api_authentication_gateway.dart';
import 'package:web_admin_dashboard/data/models/user_dto.dart';
import 'package:web_admin_dashboard/domain/entities/user.dart';
import 'package:web_admin_dashboard/domain/services/login_service.dart';
import 'package:web_admin_dashboard/factories/factory.dart';

class ApiLoginService implements LoginService {
  final ApiAuthenticationGateWay _jsonWebTokenGateWay;
  final Factory<User, UserDto> _userFactory;

  ApiLoginService(
    this._jsonWebTokenGateWay,
    this._userFactory,
  );

  @override
  Future<User> authentication(String email, String password) async {
    final UserDto userDto =
        await _jsonWebTokenGateWay.authentication(email, password);
    return _userFactory.create(userDto);
  }
}
