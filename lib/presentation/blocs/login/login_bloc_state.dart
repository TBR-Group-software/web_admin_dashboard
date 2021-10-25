part of 'login_bloc.dart';

@immutable
class LoginBlocState {
  final LoginBlocStatus status;
  final User? user;
  final Object? error;

  const LoginBlocState(
      this.status, {
        this.user,
        this.error,
      });
}
