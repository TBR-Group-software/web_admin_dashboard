import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_admin_dashboard/dependency_injection.dart' as di;
import 'package:web_admin_dashboard/domain/entities/group.dart';
import 'package:web_admin_dashboard/presentation/blocs/groups/groups_bloc.dart';
import 'package:web_admin_dashboard/presentation/widgets/delete_button.dart';
import 'package:web_admin_dashboard/presentation/widgets/edit_button.dart';
import 'package:web_admin_dashboard/presentation/widgets/success_operation_dialog.dart';

import 'components/group_info_dialog.dart';
import 'components/groups_list.dart';

class GroupsPage extends StatefulWidget {
  @override
  _GroupsPageState createState() => _GroupsPageState();
}

class _GroupsPageState extends State<GroupsPage> {
  final GroupsBloc _groupsBloc = di.sl.get();

  final GlobalKey<EditButtonState> _editButtonKey =
      GlobalKey<EditButtonState>();
  final GlobalKey<DeleteButtonState> _deleteButtonKey =
      GlobalKey<DeleteButtonState>();
  List<Group> _groups = <Group>[];
  List<bool> _tilesCheckState = <bool>[];

  void _addGroupDialog() {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return GroupInfoDialog(
          callback: (Group group) {
            _editButtonKey.currentState!.setActiveState(false);
            _deleteButtonKey.currentState!.setActiveState(false);
            _groupsBloc.add(GroupsBlocEvent.createGroup(group));
          },
        );
      },
    );
  }

  void _editGroupDialog() {
    Group? group;
    for (int i = 0; i < _tilesCheckState.length; i++) {
      if (_tilesCheckState[i]) {
        group = _groups[i];
        break;
      }
    }
    if (group != null) {
      showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return GroupInfoDialog(
            group: group,
            callback: (Group group) {
              _editButtonKey.currentState!.setActiveState(false);
              _deleteButtonKey.currentState!.setActiveState(false);
              _groupsBloc.add(GroupsBlocEvent.updateGroup(group));
            },
          );
        },
      );
    }
  }

  void _deleteGroups() {
    final List<int> ids = <int>[];
    for (int i = 0; i < _tilesCheckState.length; i++) {
      if (_tilesCheckState[i]) {
        ids.add(_groups[i].id!);
      }
    }
    if (ids.isNotEmpty) {
      _editButtonKey.currentState!.setActiveState(false);
      _deleteButtonKey.currentState!.setActiveState(false);
      _groupsBloc.add(GroupsBlocEvent.deleteGroups(ids));
    }
  }

  void _loadGroups() {
    _groupsBloc.add(const GroupsBlocEvent.getGroups());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<GroupsBloc, GroupsBlocState>(
      bloc: _groupsBloc,
      listener: (BuildContext context, GroupsBlocState snapshot) {
        if (snapshot.status == GroupsBlocStatus.OperationSuccess) {
          showDialog<void>(
            context: context,
            builder: (BuildContext context) {
              return const SuccessOperationDialog();
            },
          );
        }
      },
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.white54,
            width: double.infinity,
            padding: const EdgeInsets.only(
              top: 10.0,
              left: 20.0,
              bottom: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                OutlinedButton(
                  onPressed: _addGroupDialog,
                  child: Text(
                    'add'.tr(),
                  ),
                ),
                const SizedBox(
                  width: 15.0,
                ),
                EditButton(
                  key: _editButtonKey,
                  editElement: _editGroupDialog,
                ),
                const SizedBox(
                  width: 15.0,
                ),
                DeleteButton(
                  key: _deleteButtonKey,
                  deleteElements: _deleteGroups,
                ),
                const SizedBox(
                  width: 15.0,
                ),
                IconButton(
                  icon: const Icon(
                    Icons.update,
                  ),
                  onPressed: _loadGroups,
                ),
              ],
            ),
          ),
          Container(
            height: 1.0,
            width: double.infinity,
            color: Colors.grey,
          ),
          BlocBuilder<GroupsBloc, GroupsBlocState>(
            bloc: _groupsBloc,
            builder: (BuildContext context, GroupsBlocState snapshot) {
              if (snapshot.status == GroupsBlocStatus.Error) {
                return Center(
                  child: Text(
                    snapshot.error.toString(),
                  ),
                );
              } else if (snapshot.status == GroupsBlocStatus.Loading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              _groups = snapshot.groups!;
              _tilesCheckState = List<bool>.generate(
                  snapshot.groups!.length, (int index) => false);
              return GroupsList(
                groupsInfo: snapshot.groups!,
                tilesCheckState: _tilesCheckState,
                tileCheckCallback: (int index, bool isChecked) {
                  _tilesCheckState[index] = isChecked;
                  if (_tilesCheckState.contains(true)) {
                    _editButtonKey.currentState!.setActiveState(true);
                    _deleteButtonKey.currentState!.setActiveState(true);
                  } else {
                    _editButtonKey.currentState!.setActiveState(false);
                    _deleteButtonKey.currentState!.setActiveState(false);
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
