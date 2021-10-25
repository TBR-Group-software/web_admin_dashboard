import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web_admin_dashboard/domain/entities/user.dart';
import 'package:web_admin_dashboard/domain/use_cases/user/create_user_use_case.dart';
import 'package:web_admin_dashboard/domain/use_cases/user/delete_user_use_case.dart';
import 'package:web_admin_dashboard/domain/use_cases/user/get_users_use_case.dart';
import 'package:web_admin_dashboard/domain/use_cases/user/update_user_use_case.dart';

part 'users_bloc.freezed.dart';
part 'users_bloc_event.dart';
part 'users_bloc_state.dart';
part 'users_bloc_status.dart';

class UsersBloc extends Bloc<UsersBlocEvent, UsersBlocState> {
  final GetUsersUseCase _getUsersUseCase;
  final CreateUserUseCase _createUserUseCase;
  final UpdateUserUseCase _updateUserUseCase;
  final DeleteUserUseCase _deleteUserUseCase;

  UsersBloc(
    this._getUsersUseCase,
    this._createUserUseCase,
    this._updateUserUseCase,
    this._deleteUserUseCase,
  ) : super(const UsersBlocState(UsersBlocStatus.Loading)) {
    add(const GetUsersEvent());
  }

  @override
  Stream<UsersBlocState> mapEventToState(UsersBlocEvent event) => event.when(
        getUsers: _getUsers,
        createUser: _createUser,
        updateUser: _updateUser,
        deleteUsers: _deleteUsers,
      );

  Stream<UsersBlocState> _getUsers() async* {
    yield _loadingState();
    yield await _getUsersUseCase
        .getUsers()
        .then((List<User> users) =>
            UsersBlocState(UsersBlocStatus.Loaded, users: users))
        .catchError(_errorState);
  }

  Stream<UsersBlocState> _createUser(User user) async* {
    try {
      await _createUserUseCase.createUser(user);
      yield UsersBlocState(
        UsersBlocStatus.OperationSuccess,
        users: state.users,
      );
      add(const UsersBlocEvent.getUsers());
    } on Exception catch (e) {
      yield _errorState(e);
    }
  }

  Stream<UsersBlocState> _updateUser(User user) async* {
    try {
      await _updateUserUseCase.updateUser(user);
      yield UsersBlocState(
        UsersBlocStatus.OperationSuccess,
        users: state.users,
      );
      add(const UsersBlocEvent.getUsers());
    } on Exception catch (e) {
      yield _errorState(e);
    }
  }

  Stream<UsersBlocState> _deleteUsers(List<int> ids) async* {
    try {
      for (int i = 0; i < ids.length; i++) {
        await _deleteUserUseCase.deleteUser(ids[i]);
      }
      yield UsersBlocState(
        UsersBlocStatus.OperationSuccess,
        users: state.users,
      );
      add(const UsersBlocEvent.getUsers());
    } on Exception catch (e) {
      yield _errorState(e);
    }
  }

  UsersBlocState _loadingState() => UsersBlocState(
        UsersBlocStatus.Loading,
        users: state.users,
      );

  UsersBlocState _errorState(Object error) => UsersBlocState(
        UsersBlocStatus.Error,
        users: state.users,
        error: error,
      );
}
