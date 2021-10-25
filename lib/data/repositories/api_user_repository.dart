import 'package:web_admin_dashboard/data/gateways/api_user_gateway.dart';
import 'package:web_admin_dashboard/data/models/user_dto.dart';
import 'package:web_admin_dashboard/domain/entities/user.dart';
import 'package:web_admin_dashboard/domain/repositories/user_repository.dart';
import 'package:web_admin_dashboard/factories/factory.dart';

class ApiUserRepository implements UserRepository {
  final ApiUserGateWay _userGateWay;
  final Factory<User, UserDto> _userFromDtoFactory;
  final Factory<UserDto, User> _userToDtoFactory;

  ApiUserRepository(
    this._userGateWay,
    this._userFromDtoFactory,
    this._userToDtoFactory,
  );

  @override
  Future<User> getUser(int id) async {
    final UserDto userDto = await _userGateWay.getUser(id);
    return _userFromDtoFactory.create(userDto);
  }

  @override
  Future<List<User>> getUsers() async {
    final List<UserDto> usersDto = await _userGateWay.getUsers();
    return usersDto.map((UserDto e) => _userFromDtoFactory.create(e)).toList();
  }

  @override
  Future<void> createUser(User user) =>
      _userGateWay.createUser(_userToDtoFactory.create(user));

  @override
  Future<void> updateUser(User user) =>
      _userGateWay.updateUser(_userToDtoFactory.create(user));

  @override
  Future<void> deleteUser(int id) => _userGateWay.deleteUser(id);
}
