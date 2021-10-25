// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UsersBlocEventTearOff {
  const _$UsersBlocEventTearOff();

  GetUsersEvent getUsers() {
    return const GetUsersEvent();
  }

  CreateUserEvent createUser(User user) {
    return CreateUserEvent(
      user,
    );
  }

  UpdateUserEvent updateUser(User user) {
    return UpdateUserEvent(
      user,
    );
  }

  DeleteUsersEvent deleteUsers(List<int> ids) {
    return DeleteUsersEvent(
      ids,
    );
  }
}

/// @nodoc
const $UsersBlocEvent = _$UsersBlocEventTearOff();

/// @nodoc
mixin _$UsersBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUsers,
    required TResult Function(User user) createUser,
    required TResult Function(User user) updateUser,
    required TResult Function(List<int> ids) deleteUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUsers,
    TResult Function(User user)? createUser,
    TResult Function(User user)? updateUser,
    TResult Function(List<int> ids)? deleteUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUsersEvent value) getUsers,
    required TResult Function(CreateUserEvent value) createUser,
    required TResult Function(UpdateUserEvent value) updateUser,
    required TResult Function(DeleteUsersEvent value) deleteUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUsersEvent value)? getUsers,
    TResult Function(CreateUserEvent value)? createUser,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(DeleteUsersEvent value)? deleteUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersBlocEventCopyWith<$Res> {
  factory $UsersBlocEventCopyWith(
          UsersBlocEvent value, $Res Function(UsersBlocEvent) then) =
      _$UsersBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsersBlocEventCopyWithImpl<$Res>
    implements $UsersBlocEventCopyWith<$Res> {
  _$UsersBlocEventCopyWithImpl(this._value, this._then);

  final UsersBlocEvent _value;
  // ignore: unused_field
  final $Res Function(UsersBlocEvent) _then;
}

/// @nodoc
abstract class $GetUsersEventCopyWith<$Res> {
  factory $GetUsersEventCopyWith(
          GetUsersEvent value, $Res Function(GetUsersEvent) then) =
      _$GetUsersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetUsersEventCopyWithImpl<$Res>
    extends _$UsersBlocEventCopyWithImpl<$Res>
    implements $GetUsersEventCopyWith<$Res> {
  _$GetUsersEventCopyWithImpl(
      GetUsersEvent _value, $Res Function(GetUsersEvent) _then)
      : super(_value, (v) => _then(v as GetUsersEvent));

  @override
  GetUsersEvent get _value => super._value as GetUsersEvent;
}

/// @nodoc
class _$GetUsersEvent extends GetUsersEvent with DiagnosticableTreeMixin {
  const _$GetUsersEvent() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UsersBlocEvent.getUsers()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'UsersBlocEvent.getUsers'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetUsersEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUsers,
    required TResult Function(User user) createUser,
    required TResult Function(User user) updateUser,
    required TResult Function(List<int> ids) deleteUsers,
  }) {
    return getUsers();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUsers,
    TResult Function(User user)? createUser,
    TResult Function(User user)? updateUser,
    TResult Function(List<int> ids)? deleteUsers,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUsersEvent value) getUsers,
    required TResult Function(CreateUserEvent value) createUser,
    required TResult Function(UpdateUserEvent value) updateUser,
    required TResult Function(DeleteUsersEvent value) deleteUsers,
  }) {
    return getUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUsersEvent value)? getUsers,
    TResult Function(CreateUserEvent value)? createUser,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(DeleteUsersEvent value)? deleteUsers,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(this);
    }
    return orElse();
  }
}

abstract class GetUsersEvent extends UsersBlocEvent {
  const factory GetUsersEvent() = _$GetUsersEvent;
  const GetUsersEvent._() : super._();
}

/// @nodoc
abstract class $CreateUserEventCopyWith<$Res> {
  factory $CreateUserEventCopyWith(
          CreateUserEvent value, $Res Function(CreateUserEvent) then) =
      _$CreateUserEventCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$CreateUserEventCopyWithImpl<$Res>
    extends _$UsersBlocEventCopyWithImpl<$Res>
    implements $CreateUserEventCopyWith<$Res> {
  _$CreateUserEventCopyWithImpl(
      CreateUserEvent _value, $Res Function(CreateUserEvent) _then)
      : super(_value, (v) => _then(v as CreateUserEvent));

  @override
  CreateUserEvent get _value => super._value as CreateUserEvent;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(CreateUserEvent(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
class _$CreateUserEvent extends CreateUserEvent with DiagnosticableTreeMixin {
  const _$CreateUserEvent(this.user) : super._();

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UsersBlocEvent.createUser(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UsersBlocEvent.createUser'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateUserEvent &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $CreateUserEventCopyWith<CreateUserEvent> get copyWith =>
      _$CreateUserEventCopyWithImpl<CreateUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUsers,
    required TResult Function(User user) createUser,
    required TResult Function(User user) updateUser,
    required TResult Function(List<int> ids) deleteUsers,
  }) {
    return createUser(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUsers,
    TResult Function(User user)? createUser,
    TResult Function(User user)? updateUser,
    TResult Function(List<int> ids)? deleteUsers,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUsersEvent value) getUsers,
    required TResult Function(CreateUserEvent value) createUser,
    required TResult Function(UpdateUserEvent value) updateUser,
    required TResult Function(DeleteUsersEvent value) deleteUsers,
  }) {
    return createUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUsersEvent value)? getUsers,
    TResult Function(CreateUserEvent value)? createUser,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(DeleteUsersEvent value)? deleteUsers,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(this);
    }
    return orElse();
  }
}

abstract class CreateUserEvent extends UsersBlocEvent {
  const factory CreateUserEvent(User user) = _$CreateUserEvent;
  const CreateUserEvent._() : super._();

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateUserEventCopyWith<CreateUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserEventCopyWith<$Res> {
  factory $UpdateUserEventCopyWith(
          UpdateUserEvent value, $Res Function(UpdateUserEvent) then) =
      _$UpdateUserEventCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$UpdateUserEventCopyWithImpl<$Res>
    extends _$UsersBlocEventCopyWithImpl<$Res>
    implements $UpdateUserEventCopyWith<$Res> {
  _$UpdateUserEventCopyWithImpl(
      UpdateUserEvent _value, $Res Function(UpdateUserEvent) _then)
      : super(_value, (v) => _then(v as UpdateUserEvent));

  @override
  UpdateUserEvent get _value => super._value as UpdateUserEvent;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(UpdateUserEvent(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
class _$UpdateUserEvent extends UpdateUserEvent with DiagnosticableTreeMixin {
  const _$UpdateUserEvent(this.user) : super._();

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UsersBlocEvent.updateUser(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UsersBlocEvent.updateUser'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateUserEvent &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $UpdateUserEventCopyWith<UpdateUserEvent> get copyWith =>
      _$UpdateUserEventCopyWithImpl<UpdateUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUsers,
    required TResult Function(User user) createUser,
    required TResult Function(User user) updateUser,
    required TResult Function(List<int> ids) deleteUsers,
  }) {
    return updateUser(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUsers,
    TResult Function(User user)? createUser,
    TResult Function(User user)? updateUser,
    TResult Function(List<int> ids)? deleteUsers,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUsersEvent value) getUsers,
    required TResult Function(CreateUserEvent value) createUser,
    required TResult Function(UpdateUserEvent value) updateUser,
    required TResult Function(DeleteUsersEvent value) deleteUsers,
  }) {
    return updateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUsersEvent value)? getUsers,
    TResult Function(CreateUserEvent value)? createUser,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(DeleteUsersEvent value)? deleteUsers,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(this);
    }
    return orElse();
  }
}

abstract class UpdateUserEvent extends UsersBlocEvent {
  const factory UpdateUserEvent(User user) = _$UpdateUserEvent;
  const UpdateUserEvent._() : super._();

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserEventCopyWith<UpdateUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteUsersEventCopyWith<$Res> {
  factory $DeleteUsersEventCopyWith(
          DeleteUsersEvent value, $Res Function(DeleteUsersEvent) then) =
      _$DeleteUsersEventCopyWithImpl<$Res>;
  $Res call({List<int> ids});
}

/// @nodoc
class _$DeleteUsersEventCopyWithImpl<$Res>
    extends _$UsersBlocEventCopyWithImpl<$Res>
    implements $DeleteUsersEventCopyWith<$Res> {
  _$DeleteUsersEventCopyWithImpl(
      DeleteUsersEvent _value, $Res Function(DeleteUsersEvent) _then)
      : super(_value, (v) => _then(v as DeleteUsersEvent));

  @override
  DeleteUsersEvent get _value => super._value as DeleteUsersEvent;

  @override
  $Res call({
    Object? ids = freezed,
  }) {
    return _then(DeleteUsersEvent(
      ids == freezed
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
class _$DeleteUsersEvent extends DeleteUsersEvent with DiagnosticableTreeMixin {
  const _$DeleteUsersEvent(this.ids) : super._();

  @override
  final List<int> ids;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UsersBlocEvent.deleteUsers(ids: $ids)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UsersBlocEvent.deleteUsers'))
      ..add(DiagnosticsProperty('ids', ids));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteUsersEvent &&
            (identical(other.ids, ids) ||
                const DeepCollectionEquality().equals(other.ids, ids)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ids);

  @JsonKey(ignore: true)
  @override
  $DeleteUsersEventCopyWith<DeleteUsersEvent> get copyWith =>
      _$DeleteUsersEventCopyWithImpl<DeleteUsersEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUsers,
    required TResult Function(User user) createUser,
    required TResult Function(User user) updateUser,
    required TResult Function(List<int> ids) deleteUsers,
  }) {
    return deleteUsers(ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUsers,
    TResult Function(User user)? createUser,
    TResult Function(User user)? updateUser,
    TResult Function(List<int> ids)? deleteUsers,
    required TResult orElse(),
  }) {
    if (deleteUsers != null) {
      return deleteUsers(ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUsersEvent value) getUsers,
    required TResult Function(CreateUserEvent value) createUser,
    required TResult Function(UpdateUserEvent value) updateUser,
    required TResult Function(DeleteUsersEvent value) deleteUsers,
  }) {
    return deleteUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUsersEvent value)? getUsers,
    TResult Function(CreateUserEvent value)? createUser,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(DeleteUsersEvent value)? deleteUsers,
    required TResult orElse(),
  }) {
    if (deleteUsers != null) {
      return deleteUsers(this);
    }
    return orElse();
  }
}

abstract class DeleteUsersEvent extends UsersBlocEvent {
  const factory DeleteUsersEvent(List<int> ids) = _$DeleteUsersEvent;
  const DeleteUsersEvent._() : super._();

  List<int> get ids => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteUsersEventCopyWith<DeleteUsersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
