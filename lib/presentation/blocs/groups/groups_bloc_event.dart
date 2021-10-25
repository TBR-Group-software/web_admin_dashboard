part of 'groups_bloc.dart';

@immutable
@freezed
abstract class GroupsBlocEvent with _$GroupsBlocEvent {
  const GroupsBlocEvent._();

  const factory GroupsBlocEvent.getGroups() = GetGroupsEvent;

  const factory GroupsBlocEvent.createGroup(Group group) = CreateGroupEvent;

  const factory GroupsBlocEvent.updateGroup(Group group) = UpdateGroupEvent;

  const factory GroupsBlocEvent.deleteGroups(List<int> ids) =
      DeleteGroupsEvent;
}
