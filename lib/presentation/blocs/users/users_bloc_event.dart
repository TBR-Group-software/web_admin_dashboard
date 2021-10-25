part of 'users_bloc.dart';

@immutable
@freezed
abstract class UsersBlocEvent with _$UsersBlocEvent {
  const UsersBlocEvent._();

  const factory UsersBlocEvent.getUsers() = GetUsersEvent;

  const factory UsersBlocEvent.createUser(User user) = CreateUserEvent;

  const factory UsersBlocEvent.updateUser(User user) = UpdateUserEvent;

  const factory UsersBlocEvent.deleteUsers(List<int> ids) = DeleteUsersEvent;
}