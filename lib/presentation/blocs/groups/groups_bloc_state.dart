part of 'groups_bloc.dart';

@immutable
class GroupsBlocState {
  final GroupsBlocStatus status;
  final List<Group>? groups;
  final Object? error;

  const GroupsBlocState(
    this.status, {
    this.groups,
    this.error,
  });
}
