import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web_admin_dashboard/domain/entities/group.dart';
import 'package:web_admin_dashboard/domain/use_cases/group/create_group_use_case.dart';
import 'package:web_admin_dashboard/domain/use_cases/group/delete_group_use_case.dart';
import 'package:web_admin_dashboard/domain/use_cases/group/get_groups_use_case.dart';
import 'package:web_admin_dashboard/domain/use_cases/group/update_group_use_case.dart';

part 'groups_bloc.freezed.dart';
part 'groups_bloc_event.dart';
part 'groups_bloc_state.dart';
part 'groups_bloc_status.dart';

class GroupsBloc extends Bloc<GroupsBlocEvent, GroupsBlocState> {
  final GetGroupsUseCase _getGroupsUseCase;
  final CreateGroupUseCase _createGroupUseCase;
  final UpdateGroupUseCase _updateGroupUseCase;
  final DeleteGroupUseCase _deleteGroupUseCase;

  GroupsBloc(
    this._getGroupsUseCase,
    this._createGroupUseCase,
    this._updateGroupUseCase,
    this._deleteGroupUseCase,
  ) : super(const GroupsBlocState(GroupsBlocStatus.Loading)) {
    add(const GetGroupsEvent());
  }

  @override
  Stream<GroupsBlocState> mapEventToState(GroupsBlocEvent event) => event.when(
        getGroups: _getGroups,
        createGroup: _createGroup,
        updateGroup: _updateGroup,
        deleteGroups: _deleteGroups,
      );

  Stream<GroupsBlocState> _getGroups() async* {
    yield _loadingState();
    yield await _getGroupsUseCase
        .getGroups()
        .then((List<Group> groups) =>
            GroupsBlocState(GroupsBlocStatus.Loaded, groups: groups))
        .catchError(_errorState);
  }

  Stream<GroupsBlocState> _createGroup(Group group) async* {
    try {
      await _createGroupUseCase.createGroup(group);
      yield GroupsBlocState(
        GroupsBlocStatus.OperationSuccess,
        groups: state.groups,
      );
      add(const GroupsBlocEvent.getGroups());
    } on Exception catch (e) {
      yield _errorState(e);
    }
  }

  Stream<GroupsBlocState> _updateGroup(Group group) async* {
    try {
      await _updateGroupUseCase.updateGroup(group);
      yield GroupsBlocState(
        GroupsBlocStatus.OperationSuccess,
        groups: state.groups,
      );
      add(const GroupsBlocEvent.getGroups());
    } on Exception catch (e) {
      yield _errorState(e);
    }
  }

  Stream<GroupsBlocState> _deleteGroups(List<int> ids) async* {
    try {
      for (int i = 0; i < ids.length; i++) {
        await _deleteGroupUseCase.deleteGroup(ids[i]);
      }
      yield GroupsBlocState(
        GroupsBlocStatus.OperationSuccess,
        groups: state.groups,
      );
      add(const GroupsBlocEvent.getGroups());
    } on Exception catch (e) {
      yield _errorState(e);
    }
  }

  GroupsBlocState _loadingState() => GroupsBlocState(
        GroupsBlocStatus.Loading,
        groups: state.groups,
      );

  GroupsBlocState _errorState(Object error) => GroupsBlocState(
        GroupsBlocStatus.Error,
        groups: state.groups,
        error: error,
      );
}
