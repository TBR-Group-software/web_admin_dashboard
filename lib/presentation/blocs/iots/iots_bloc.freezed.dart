// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'iots_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IotsBlocEventTearOff {
  const _$IotsBlocEventTearOff();

  GetIotsEvent getIots() {
    return const GetIotsEvent();
  }

  CreateIotEvent createIot(Iot iot) {
    return CreateIotEvent(
      iot,
    );
  }

  UpdateIotEvent updateIot(Iot iot) {
    return UpdateIotEvent(
      iot,
    );
  }

  DeleteIotsEvent deleteIots(List<int> ids) {
    return DeleteIotsEvent(
      ids,
    );
  }
}

/// @nodoc
const $IotsBlocEvent = _$IotsBlocEventTearOff();

/// @nodoc
mixin _$IotsBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getIots,
    required TResult Function(Iot iot) createIot,
    required TResult Function(Iot iot) updateIot,
    required TResult Function(List<int> ids) deleteIots,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getIots,
    TResult Function(Iot iot)? createIot,
    TResult Function(Iot iot)? updateIot,
    TResult Function(List<int> ids)? deleteIots,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetIotsEvent value) getIots,
    required TResult Function(CreateIotEvent value) createIot,
    required TResult Function(UpdateIotEvent value) updateIot,
    required TResult Function(DeleteIotsEvent value) deleteIots,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetIotsEvent value)? getIots,
    TResult Function(CreateIotEvent value)? createIot,
    TResult Function(UpdateIotEvent value)? updateIot,
    TResult Function(DeleteIotsEvent value)? deleteIots,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IotsBlocEventCopyWith<$Res> {
  factory $IotsBlocEventCopyWith(
          IotsBlocEvent value, $Res Function(IotsBlocEvent) then) =
      _$IotsBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$IotsBlocEventCopyWithImpl<$Res>
    implements $IotsBlocEventCopyWith<$Res> {
  _$IotsBlocEventCopyWithImpl(this._value, this._then);

  final IotsBlocEvent _value;
  // ignore: unused_field
  final $Res Function(IotsBlocEvent) _then;
}

/// @nodoc
abstract class $GetIotsEventCopyWith<$Res> {
  factory $GetIotsEventCopyWith(
          GetIotsEvent value, $Res Function(GetIotsEvent) then) =
      _$GetIotsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetIotsEventCopyWithImpl<$Res> extends _$IotsBlocEventCopyWithImpl<$Res>
    implements $GetIotsEventCopyWith<$Res> {
  _$GetIotsEventCopyWithImpl(
      GetIotsEvent _value, $Res Function(GetIotsEvent) _then)
      : super(_value, (v) => _then(v as GetIotsEvent));

  @override
  GetIotsEvent get _value => super._value as GetIotsEvent;
}

/// @nodoc
class _$GetIotsEvent extends GetIotsEvent with DiagnosticableTreeMixin {
  const _$GetIotsEvent() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IotsBlocEvent.getIots()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'IotsBlocEvent.getIots'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetIotsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getIots,
    required TResult Function(Iot iot) createIot,
    required TResult Function(Iot iot) updateIot,
    required TResult Function(List<int> ids) deleteIots,
  }) {
    return getIots();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getIots,
    TResult Function(Iot iot)? createIot,
    TResult Function(Iot iot)? updateIot,
    TResult Function(List<int> ids)? deleteIots,
    required TResult orElse(),
  }) {
    if (getIots != null) {
      return getIots();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetIotsEvent value) getIots,
    required TResult Function(CreateIotEvent value) createIot,
    required TResult Function(UpdateIotEvent value) updateIot,
    required TResult Function(DeleteIotsEvent value) deleteIots,
  }) {
    return getIots(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetIotsEvent value)? getIots,
    TResult Function(CreateIotEvent value)? createIot,
    TResult Function(UpdateIotEvent value)? updateIot,
    TResult Function(DeleteIotsEvent value)? deleteIots,
    required TResult orElse(),
  }) {
    if (getIots != null) {
      return getIots(this);
    }
    return orElse();
  }
}

abstract class GetIotsEvent extends IotsBlocEvent {
  const factory GetIotsEvent() = _$GetIotsEvent;
  const GetIotsEvent._() : super._();
}

/// @nodoc
abstract class $CreateIotEventCopyWith<$Res> {
  factory $CreateIotEventCopyWith(
          CreateIotEvent value, $Res Function(CreateIotEvent) then) =
      _$CreateIotEventCopyWithImpl<$Res>;
  $Res call({Iot iot});
}

/// @nodoc
class _$CreateIotEventCopyWithImpl<$Res>
    extends _$IotsBlocEventCopyWithImpl<$Res>
    implements $CreateIotEventCopyWith<$Res> {
  _$CreateIotEventCopyWithImpl(
      CreateIotEvent _value, $Res Function(CreateIotEvent) _then)
      : super(_value, (v) => _then(v as CreateIotEvent));

  @override
  CreateIotEvent get _value => super._value as CreateIotEvent;

  @override
  $Res call({
    Object? iot = freezed,
  }) {
    return _then(CreateIotEvent(
      iot == freezed
          ? _value.iot
          : iot // ignore: cast_nullable_to_non_nullable
              as Iot,
    ));
  }
}

/// @nodoc
class _$CreateIotEvent extends CreateIotEvent with DiagnosticableTreeMixin {
  const _$CreateIotEvent(this.iot) : super._();

  @override
  final Iot iot;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IotsBlocEvent.createIot(iot: $iot)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IotsBlocEvent.createIot'))
      ..add(DiagnosticsProperty('iot', iot));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateIotEvent &&
            (identical(other.iot, iot) ||
                const DeepCollectionEquality().equals(other.iot, iot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(iot);

  @JsonKey(ignore: true)
  @override
  $CreateIotEventCopyWith<CreateIotEvent> get copyWith =>
      _$CreateIotEventCopyWithImpl<CreateIotEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getIots,
    required TResult Function(Iot iot) createIot,
    required TResult Function(Iot iot) updateIot,
    required TResult Function(List<int> ids) deleteIots,
  }) {
    return createIot(iot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getIots,
    TResult Function(Iot iot)? createIot,
    TResult Function(Iot iot)? updateIot,
    TResult Function(List<int> ids)? deleteIots,
    required TResult orElse(),
  }) {
    if (createIot != null) {
      return createIot(iot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetIotsEvent value) getIots,
    required TResult Function(CreateIotEvent value) createIot,
    required TResult Function(UpdateIotEvent value) updateIot,
    required TResult Function(DeleteIotsEvent value) deleteIots,
  }) {
    return createIot(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetIotsEvent value)? getIots,
    TResult Function(CreateIotEvent value)? createIot,
    TResult Function(UpdateIotEvent value)? updateIot,
    TResult Function(DeleteIotsEvent value)? deleteIots,
    required TResult orElse(),
  }) {
    if (createIot != null) {
      return createIot(this);
    }
    return orElse();
  }
}

abstract class CreateIotEvent extends IotsBlocEvent {
  const factory CreateIotEvent(Iot iot) = _$CreateIotEvent;
  const CreateIotEvent._() : super._();

  Iot get iot => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateIotEventCopyWith<CreateIotEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateIotEventCopyWith<$Res> {
  factory $UpdateIotEventCopyWith(
          UpdateIotEvent value, $Res Function(UpdateIotEvent) then) =
      _$UpdateIotEventCopyWithImpl<$Res>;
  $Res call({Iot iot});
}

/// @nodoc
class _$UpdateIotEventCopyWithImpl<$Res>
    extends _$IotsBlocEventCopyWithImpl<$Res>
    implements $UpdateIotEventCopyWith<$Res> {
  _$UpdateIotEventCopyWithImpl(
      UpdateIotEvent _value, $Res Function(UpdateIotEvent) _then)
      : super(_value, (v) => _then(v as UpdateIotEvent));

  @override
  UpdateIotEvent get _value => super._value as UpdateIotEvent;

  @override
  $Res call({
    Object? iot = freezed,
  }) {
    return _then(UpdateIotEvent(
      iot == freezed
          ? _value.iot
          : iot // ignore: cast_nullable_to_non_nullable
              as Iot,
    ));
  }
}

/// @nodoc
class _$UpdateIotEvent extends UpdateIotEvent with DiagnosticableTreeMixin {
  const _$UpdateIotEvent(this.iot) : super._();

  @override
  final Iot iot;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IotsBlocEvent.updateIot(iot: $iot)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IotsBlocEvent.updateIot'))
      ..add(DiagnosticsProperty('iot', iot));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateIotEvent &&
            (identical(other.iot, iot) ||
                const DeepCollectionEquality().equals(other.iot, iot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(iot);

  @JsonKey(ignore: true)
  @override
  $UpdateIotEventCopyWith<UpdateIotEvent> get copyWith =>
      _$UpdateIotEventCopyWithImpl<UpdateIotEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getIots,
    required TResult Function(Iot iot) createIot,
    required TResult Function(Iot iot) updateIot,
    required TResult Function(List<int> ids) deleteIots,
  }) {
    return updateIot(iot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getIots,
    TResult Function(Iot iot)? createIot,
    TResult Function(Iot iot)? updateIot,
    TResult Function(List<int> ids)? deleteIots,
    required TResult orElse(),
  }) {
    if (updateIot != null) {
      return updateIot(iot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetIotsEvent value) getIots,
    required TResult Function(CreateIotEvent value) createIot,
    required TResult Function(UpdateIotEvent value) updateIot,
    required TResult Function(DeleteIotsEvent value) deleteIots,
  }) {
    return updateIot(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetIotsEvent value)? getIots,
    TResult Function(CreateIotEvent value)? createIot,
    TResult Function(UpdateIotEvent value)? updateIot,
    TResult Function(DeleteIotsEvent value)? deleteIots,
    required TResult orElse(),
  }) {
    if (updateIot != null) {
      return updateIot(this);
    }
    return orElse();
  }
}

abstract class UpdateIotEvent extends IotsBlocEvent {
  const factory UpdateIotEvent(Iot iot) = _$UpdateIotEvent;
  const UpdateIotEvent._() : super._();

  Iot get iot => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateIotEventCopyWith<UpdateIotEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteIotsEventCopyWith<$Res> {
  factory $DeleteIotsEventCopyWith(
          DeleteIotsEvent value, $Res Function(DeleteIotsEvent) then) =
      _$DeleteIotsEventCopyWithImpl<$Res>;
  $Res call({List<int> ids});
}

/// @nodoc
class _$DeleteIotsEventCopyWithImpl<$Res>
    extends _$IotsBlocEventCopyWithImpl<$Res>
    implements $DeleteIotsEventCopyWith<$Res> {
  _$DeleteIotsEventCopyWithImpl(
      DeleteIotsEvent _value, $Res Function(DeleteIotsEvent) _then)
      : super(_value, (v) => _then(v as DeleteIotsEvent));

  @override
  DeleteIotsEvent get _value => super._value as DeleteIotsEvent;

  @override
  $Res call({
    Object? ids = freezed,
  }) {
    return _then(DeleteIotsEvent(
      ids == freezed
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
class _$DeleteIotsEvent extends DeleteIotsEvent with DiagnosticableTreeMixin {
  const _$DeleteIotsEvent(this.ids) : super._();

  @override
  final List<int> ids;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IotsBlocEvent.deleteIots(ids: $ids)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IotsBlocEvent.deleteIots'))
      ..add(DiagnosticsProperty('ids', ids));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteIotsEvent &&
            (identical(other.ids, ids) ||
                const DeepCollectionEquality().equals(other.ids, ids)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ids);

  @JsonKey(ignore: true)
  @override
  $DeleteIotsEventCopyWith<DeleteIotsEvent> get copyWith =>
      _$DeleteIotsEventCopyWithImpl<DeleteIotsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getIots,
    required TResult Function(Iot iot) createIot,
    required TResult Function(Iot iot) updateIot,
    required TResult Function(List<int> ids) deleteIots,
  }) {
    return deleteIots(ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getIots,
    TResult Function(Iot iot)? createIot,
    TResult Function(Iot iot)? updateIot,
    TResult Function(List<int> ids)? deleteIots,
    required TResult orElse(),
  }) {
    if (deleteIots != null) {
      return deleteIots(ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetIotsEvent value) getIots,
    required TResult Function(CreateIotEvent value) createIot,
    required TResult Function(UpdateIotEvent value) updateIot,
    required TResult Function(DeleteIotsEvent value) deleteIots,
  }) {
    return deleteIots(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetIotsEvent value)? getIots,
    TResult Function(CreateIotEvent value)? createIot,
    TResult Function(UpdateIotEvent value)? updateIot,
    TResult Function(DeleteIotsEvent value)? deleteIots,
    required TResult orElse(),
  }) {
    if (deleteIots != null) {
      return deleteIots(this);
    }
    return orElse();
  }
}

abstract class DeleteIotsEvent extends IotsBlocEvent {
  const factory DeleteIotsEvent(List<int> ids) = _$DeleteIotsEvent;
  const DeleteIotsEvent._() : super._();

  List<int> get ids => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteIotsEventCopyWith<DeleteIotsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
