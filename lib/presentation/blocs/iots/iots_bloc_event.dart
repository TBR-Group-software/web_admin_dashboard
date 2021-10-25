part of 'iots_bloc.dart';

@immutable
@freezed
abstract class IotsBlocEvent with _$IotsBlocEvent {
  const IotsBlocEvent._();

  const factory IotsBlocEvent.getIots() = GetIotsEvent;

  const factory IotsBlocEvent.createIot(Iot iot) = CreateIotEvent;

  const factory IotsBlocEvent.updateIot(Iot iot) = UpdateIotEvent;

  const factory IotsBlocEvent.deleteIots(List<int> ids) = DeleteIotsEvent;
}
