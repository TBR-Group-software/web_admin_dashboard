import 'package:flutter/material.dart';
import 'package:web_admin_dashboard/domain/entities/user.dart';

class UsersList extends StatefulWidget {
  const UsersList({
    required List<User> usersInfo,
    required List<bool> tilesCheckState,
    required Function(int, bool) tileCheckCallback,
    Key? key,
  })  : assert(usersInfo.length == tilesCheckState.length),
        _usersInfo = usersInfo,
        _tilesCheckState = tilesCheckState,
        _tileCheckCallback = tileCheckCallback,
        super(key: key);

  final List<User> _usersInfo;
  final List<bool> _tilesCheckState;
  final Function(int, bool) _tileCheckCallback;

  @override
  _UsersListState createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
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
            widget._usersInfo[index].email!,
          ),
          subtitle: Text(
            widget._usersInfo[index].role!,
          ),
        );
      },
    );
  }
}
