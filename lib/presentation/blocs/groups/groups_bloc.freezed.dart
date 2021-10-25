// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'groups_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GroupsBlocEventTearOff {
  const _$GroupsBlocEventTearOff();

  GetGroupsEvent getGroups() {
    return const GetGroupsEvent();
  }

  CreateGroupEvent createGroup(Group group) {
    return CreateGroupEvent(
      group,
    );
  }

  UpdateGroupEvent updateGroup(Group group) {
    return UpdateGroupEvent(
      group,
    );
  }

  DeleteGroupsEvent deleteGroups(List<int> ids) {
    return DeleteGroupsEvent(
      ids,
    );
  }
}

/// @nodoc
const $GroupsBlocEvent = _$GroupsBlocEventTearOff();

/// @nodoc
mixin _$GroupsBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGroups,
    required TResult Function(Group group) createGroup,
    required TResult Function(Group group) updateGroup,
    required TResult Function(List<int> ids) deleteGroups,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGroups,
    TResult Function(Group group)? createGroup,
    TResult Function(Group group)? updateGroup,
    TResult Function(List<int> ids)? deleteGroups,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGroupsEvent value) getGroups,
    required TResult Function(CreateGroupEvent value) createGroup,
    required TResult Function(UpdateGroupEvent value) updateGroup,
    required TResult Function(DeleteGroupsEvent value) deleteGroups,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGroupsEvent value)? getGroups,
    TResult Function(CreateGroupEvent value)? createGroup,
    TResult Function(UpdateGroupEvent value)? updateGroup,
    TResult Function(DeleteGroupsEvent value)? deleteGroups,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupsBlocEventCopyWith<$Res> {
  factory $GroupsBlocEventCopyWith(
          GroupsBlocEvent value, $Res Function(GroupsBlocEvent) then) =
      _$GroupsBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GroupsBlocEventCopyWithImpl<$Res>
    implements $GroupsBlocEventCopyWith<$Res> {
  _$GroupsBlocEventCopyWithImpl(this._value, this._then);

  final GroupsBlocEvent _value;
  // ignore: unused_field
  final $Res Function(GroupsBlocEvent) _then;
}

/// @nodoc
abstract class $GetGroupsEventCopyWith<$Res> {
  factory $GetGroupsEventCopyWith(
          GetGroupsEvent value, $Res Function(GetGroupsEvent) then) =
      _$GetGroupsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetGroupsEventCopyWithImpl<$Res>
    extends _$GroupsBlocEventCopyWithImpl<$Res>
    implements $GetGroupsEventCopyWith<$Res> {
  _$GetGroupsEventCopyWithImpl(
      GetGroupsEvent _value, $Res Function(GetGroupsEvent) _then)
      : super(_value, (v) => _then(v as GetGroupsEvent));

  @override
  GetGroupsEvent get _value => super._value as GetGroupsEvent;
}

/// @nodoc
class _$GetGroupsEvent extends GetGroupsEvent with DiagnosticableTreeMixin {
  const _$GetGroupsEvent() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GroupsBlocEvent.getGroups()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'GroupsBlocEvent.getGroups'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetGroupsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGroups,
    required TResult Function(Group group) createGroup,
    required TResult Function(Group group) updateGroup,
    required TResult Function(List<int> ids) deleteGroups,
  }) {
    return getGroups();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGroups,
    TResult Function(Group group)? createGroup,
    TResult Function(Group group)? updateGroup,
    TResult Function(List<int> ids)? deleteGroups,
    required TResult orElse(),
  }) {
    if (getGroups != null) {
      return getGroups();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGroupsEvent value) getGroups,
    required TResult Function(CreateGroupEvent value) createGroup,
    required TResult Function(UpdateGroupEvent value) updateGroup,
    required TResult Function(DeleteGroupsEvent value) deleteGroups,
  }) {
    return getGroups(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGroupsEvent value)? getGroups,
    TResult Function(CreateGroupEvent value)? createGroup,
    TResult Function(UpdateGroupEvent value)? updateGroup,
    TResult Function(DeleteGroupsEvent value)? deleteGroups,
    required TResult orElse(),
  }) {
    if (getGroups != null) {
      return getGroups(this);
    }
    return orElse();
  }
}

abstract class GetGroupsEvent extends GroupsBlocEvent {
  const factory GetGroupsEvent() = _$GetGroupsEvent;
  const GetGroupsEvent._() : super._();
}

/// @nodoc
abstract class $CreateGroupEventCopyWith<$Res> {
  factory $CreateGroupEventCopyWith(
          CreateGroupEvent value, $Res Function(CreateGroupEvent) then) =
      _$CreateGroupEventCopyWithImpl<$Res>;
  $Res call({Group group});
}

/// @nodoc
class _$CreateGroupEventCopyWithImpl<$Res>
    extends _$GroupsBlocEventCopyWithImpl<$Res>
    implements $CreateGroupEventCopyWith<$Res> {
  _$CreateGroupEventCopyWithImpl(
      CreateGroupEvent _value, $Res Function(CreateGroupEvent) _then)
      : super(_value, (v) => _then(v as CreateGroupEvent));

  @override
  CreateGroupEvent get _value => super._value as CreateGroupEvent;

  @override
  $Res call({
    Object? group = freezed,
  }) {
    return _then(CreateGroupEvent(
      group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group,
    ));
  }
}

/// @nodoc
class _$CreateGroupEvent extends CreateGroupEvent with DiagnosticableTreeMixin {
  const _$CreateGroupEvent(this.group) : super._();

  @override
  final Group group;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GroupsBlocEvent.createGroup(group: $group)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GroupsBlocEvent.createGroup'))
      ..add(DiagnosticsProperty('group', group));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateGroupEvent &&
            (identical(other.group, group) ||
                const DeepCollectionEquality().equals(other.group, group)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(group);

  @JsonKey(ignore: true)
  @override
  $CreateGroupEventCopyWith<CreateGroupEvent> get copyWith =>
      _$CreateGroupEventCopyWithImpl<CreateGroupEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGroups,
    required TResult Function(Group group) createGroup,
    required TResult Function(Group group) updateGroup,
    required TResult Function(List<int> ids) deleteGroups,
  }) {
    return createGroup(group);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGroups,
    TResult Function(Group group)? createGroup,
    TResult Function(Group group)? updateGroup,
    TResult Function(List<int> ids)? deleteGroups,
    required TResult orElse(),
  }) {
    if (createGroup != null) {
      return createGroup(group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGroupsEvent value) getGroups,
    required TResult Function(CreateGroupEvent value) createGroup,
    required TResult Function(UpdateGroupEvent value) updateGroup,
    required TResult Function(DeleteGroupsEvent value) deleteGroups,
  }) {
    return createGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGroupsEvent value)? getGroups,
    TResult Function(CreateGroupEvent value)? createGroup,
    TResult Function(UpdateGroupEvent value)? updateGroup,
    TResult Function(DeleteGroupsEvent value)? deleteGroups,
    required TResult orElse(),
  }) {
    if (createGroup != null) {
      return createGroup(this);
    }
    return orElse();
  }
}

abstract class CreateGroupEvent extends GroupsBlocEvent {
  const factory CreateGroupEvent(Group group) = _$CreateGroupEvent;
  const CreateGroupEvent._() : super._();

  Group get group => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateGroupEventCopyWith<CreateGroupEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateGroupEventCopyWith<$Res> {
  factory $UpdateGroupEventCopyWith(
          UpdateGroupEvent value, $Res Function(UpdateGroupEvent) then) =
      _$UpdateGroupEventCopyWithImpl<$Res>;
  $Res call({Group group});
}

/// @nodoc
class _$UpdateGroupEventCopyWithImpl<$Res>
    extends _$GroupsBlocEventCopyWithImpl<$Res>
    implements $UpdateGroupEventCopyWith<$Res> {
  _$UpdateGroupEventCopyWithImpl(
      UpdateGroupEvent _value, $Res Function(UpdateGroupEvent) _then)
      : super(_value, (v) => _then(v as UpdateGroupEvent));

  @override
  UpdateGroupEvent get _value => super._value as UpdateGroupEvent;

  @override
  $Res call({
    Object? group = freezed,
  }) {
    return _then(UpdateGroupEvent(
      group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group,
    ));
  }
}

/// @nodoc
class _$UpdateGroupEvent extends UpdateGroupEvent with DiagnosticableTreeMixin {
  const _$UpdateGroupEvent(this.group) : super._();

  @override
  final Group group;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GroupsBlocEvent.updateGroup(group: $group)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GroupsBlocEvent.updateGroup'))
      ..add(DiagnosticsProperty('group', group));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateGroupEvent &&
            (identical(other.group, group) ||
                const DeepCollectionEquality().equals(other.group, group)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(group);

  @JsonKey(ignore: true)
  @override
  $UpdateGroupEventCopyWith<UpdateGroupEvent> get copyWith =>
      _$UpdateGroupEventCopyWithImpl<UpdateGroupEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGroups,
    required TResult Function(Group group) createGroup,
    required TResult Function(Group group) updateGroup,
    required TResult Function(List<int> ids) deleteGroups,
  }) {
    return updateGroup(group);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGroups,
    TResult Function(Group group)? createGroup,
    TResult Function(Group group)? updateGroup,
    TResult Function(List<int> ids)? deleteGroups,
    required TResult orElse(),
  }) {
    if (updateGroup != null) {
      return updateGroup(group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGroupsEvent value) getGroups,
    required TResult Function(CreateGroupEvent value) createGroup,
    required TResult Function(UpdateGroupEvent value) updateGroup,
    required TResult Function(DeleteGroupsEvent value) deleteGroups,
  }) {
    return updateGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGroupsEvent value)? getGroups,
    TResult Function(CreateGroupEvent value)? createGroup,
    TResult Function(UpdateGroupEvent value)? updateGroup,
    TResult Function(DeleteGroupsEvent value)? deleteGroups,
    required TResult orElse(),
  }) {
    if (updateGroup != null) {
      return updateGroup(this);
    }
    return orElse();
  }
}

abstract class UpdateGroupEvent extends GroupsBlocEvent {
  const factory UpdateGroupEvent(Group group) = _$UpdateGroupEvent;
  const UpdateGroupEvent._() : super._();

  Group get group => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateGroupEventCopyWith<UpdateGroupEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteGroupsEventCopyWith<$Res> {
  factory $DeleteGroupsEventCopyWith(
          DeleteGroupsEvent value, $Res Function(DeleteGroupsEvent) then) =
      _$DeleteGroupsEventCopyWithImpl<$Res>;
  $Res call({List<int> ids});
}

/// @nodoc
class _$DeleteGroupsEventCopyWithImpl<$Res>
    extends _$GroupsBlocEventCopyWithImpl<$Res>
    implements $DeleteGroupsEventCopyWith<$Res> {
  _$DeleteGroupsEventCopyWithImpl(
      DeleteGroupsEvent _value, $Res Function(DeleteGroupsEvent) _then)
      : super(_value, (v) => _then(v as DeleteGroupsEvent));

  @override
  DeleteGroupsEvent get _value => super._value as DeleteGroupsEvent;

  @override
  $Res call({
    Object? ids = freezed,
  }) {
    return _then(DeleteGroupsEvent(
      ids == freezed
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
class _$DeleteGroupsEvent extends DeleteGroupsEvent
    with DiagnosticableTreeMixin {
  const _$DeleteGroupsEvent(this.ids) : super._();

  @override
  final List<int> ids;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GroupsBlocEvent.deleteGroups(ids: $ids)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GroupsBlocEvent.deleteGroups'))
      ..add(DiagnosticsProperty('ids', ids));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteGroupsEvent &&
            (identical(other.ids, ids) ||
                const DeepCollectionEquality().equals(other.ids, ids)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ids);

  @JsonKey(ignore: true)
  @override
  $DeleteGroupsEventCopyWith<DeleteGroupsEvent> get copyWith =>
      _$DeleteGroupsEventCopyWithImpl<DeleteGroupsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGroups,
    required TResult Function(Group group) createGroup,
    required TResult Function(Group group) updateGroup,
    required TResult Function(List<int> ids) deleteGroups,
  }) {
    return deleteGroups(ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGroups,
    TResult Function(Group group)? createGroup,
    TResult Function(Group group)? updateGroup,
    TResult Function(List<int> ids)? deleteGroups,
    required TResult orElse(),
  }) {
    if (deleteGroups != null) {
      return deleteGroups(ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGroupsEvent value) getGroups,
    required TResult Function(CreateGroupEvent value) createGroup,
    required TResult Function(UpdateGroupEvent value) updateGroup,
    required TResult Function(DeleteGroupsEvent value) deleteGroups,
  }) {
    return deleteGroups(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGroupsEvent value)? getGroups,
    TResult Function(CreateGroupEvent value)? createGroup,
    TResult Function(UpdateGroupEvent value)? updateGroup,
    TResult Function(DeleteGroupsEvent value)? deleteGroups,
    required TResult orElse(),
  }) {
    if (deleteGroups != null) {
      return deleteGroups(this);
    }
    return orElse();
  }
}

abstract class DeleteGroupsEvent extends GroupsBlocEvent {
  const factory DeleteGroupsEvent(List<int> ids) = _$DeleteGroupsEvent;
  const DeleteGroupsEvent._() : super._();

  List<int> get ids => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteGroupsEventCopyWith<DeleteGroupsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
