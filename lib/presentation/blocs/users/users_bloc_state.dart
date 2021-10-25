part of 'users_bloc.dart';

@immutable
class UsersBlocState {
  final UsersBlocStatus status;
  final List<User>? users;
  final Object? error;

  const UsersBlocState(
    this.status, {
    this.users,
    this.error,
  });
}
