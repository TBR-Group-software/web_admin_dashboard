import 'package:flutter/material.dart';
import 'package:web_admin_dashboard/domain/entities/group.dart';

class GroupsList extends StatefulWidget {
  const GroupsList({
    required List<Group> groupsInfo,
    required List<bool> tilesCheckState,
    required Function(int, bool) tileCheckCallback,
    Key? key,
  })  : assert(groupsInfo.length == tilesCheckState.length),
        _groupsInfo = groupsInfo,
        _tilesCheckState = tilesCheckState,
        _tileCheckCallback = tileCheckCallback,
        super(key: key);

  final List<Group> _groupsInfo;
  final List<bool> _tilesCheckState;
  final Function(int, bool) _tileCheckCallback;

  @override
  _GroupsListState createState() => _GroupsListState();
}

class _GroupsListState extends State<GroupsList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget._tilesCheckState.length,
      itemBuilder: (BuildContext context, int index) {
        return CheckboxListTile(
          value: widget._tilesCheckState[index],
          onChanged: (bool? isChecked) {
            if (isChecked != null) {
              widget._tileCheckCallback(index, isChecked);
              setState(() {
                widget._tilesCheckState[index] = isChecked;
              });
            }
          },
          controlAffinity: ListTileControlAffinity.leading,
          title: Text(
            widget._groupsInfo[index].id!.toString(),
          ),
          subtitle: Text(
            widget._groupsInfo[index].user!.email!,
          ),
        );
      },
    );
  }
}
