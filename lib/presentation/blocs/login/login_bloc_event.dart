part of 'login_bloc.dart';

@immutable
@freezed
abstract class LoginBlocEvent with _$LoginBlocEvent {
  const LoginBlocEvent._();

  const factory LoginBlocEvent.login(String email, String password) = LoginEvent;
}