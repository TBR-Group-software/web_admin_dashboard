import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_admin_dashboard/dependency_injection.dart' as di;
import 'package:web_admin_dashboard/domain/entities/group.dart';
import 'package:web_admin_dashboard/domain/entities/user.dart';
import 'package:web_admin_dashboard/presentation/blocs/users/users_bloc.dart';
import 'package:web_admin_dashboard/presentation/widgets/dropdown_id_menu.dart';

class GroupInfoDialog extends StatefulWidget {
  const GroupInfoDialog({
    required Function(Group) callback,
    Group? group,
    Key? key,
  })  : _callback = callback,
        _group = group,
        super(key: key);

  final Group? _group;
  final Function(Group) _callback;

  @override
  _GroupInfoDialogState createState() => _GroupInfoDialogState();
}

class _GroupInfoDialogState extends State<GroupInfoDialog> {
  final UsersBloc _usersBloc = di.sl.get();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _updateDurationSecondsController =
      TextEditingController();
  final TextEditingController _lastIotChangesTimeUnixController =
      TextEditingController();

  int? _userId;
  final List<DropdownMenuItem<int>> _menuItems = <DropdownMenuItem<int>>[];

  void _setUserId(int? value) {
    if (value != null) {
      _userId = value;
    }
  }

  void _setMenuItems(List<User> users) {
    _menuItems.clear();
    for (int i = 0; i < users.length; i++) {
      _menuItems.add(DropdownMenuItem<int>(
        value: users[i].id!,
        child: Text(
          users[i].email!,
        ),
      ));
    }
    if (widget._group != null) {
      _userId = widget._group!.user!.id!;
    } else if (_menuItems.isNotEmpty) {
      _userId = _menuItems.first.value;
    }
  }

  String? _updateDurationSecondsValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'filed_is_empty'.tr();
    } else if (double.tryParse(value) == null) {
      return 'field_contains_non_numeric_symbol'.tr();
    } else if (double.parse(value).toInt() < 60) {
      return 'value_is_less_then_60'.tr();
    }
  }

  String? _lastIotChangesTimeUnixValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'filed_is_empty'.tr();
    } else if (double.tryParse(value) == null) {
      return 'field_contains_non_numeric_symbol'.tr();
    } else if (double.parse(value).toInt() < 0) {
      return 'value_is_less_then_0'.tr();
    }
  }

  @override
  void initState() {
    if (widget._group != null) {
      _updateDurationSecondsController.text =
          widget._group!.updateDurationSeconds!.toString();
      _lastIotChangesTimeUnixController.text =
          widget._group!.lastIotChangesTimeUnix!.toString();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsersBloc, UsersBlocState>(
      bloc: _usersBloc,
      builder: (BuildContext context, UsersBlocState snapshot) {
        if (snapshot.status == UsersBlocStatus.Loaded) {
          _setMenuItems(snapshot.users!);
          return AlertDialog(
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'cancel'.tr(),
                  style: const TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  if (_formKey.currentState!.validate() && _userId != null) {
                    final Group group = Group(
                      id: widget._group != null ? widget._group!.id : null,
                      user: widget._group == null
                          ? User(
                              id: _userId,
                            )
                          : null,
                      updateDurationSeconds:
                          double.parse(_updateDurationSecondsController.text)
                              .toInt(),
                      lastIotChangesTimeUnix:
                          double.parse(_lastIotChangesTimeUnixController.text)
                              .toInt(),
                    );
                    widget._callback(group);
                    Navigator.pop(context);
                  }
                },
                child: Text(
                  widget._group == null ? 'add'.tr() : 'edit'.tr(),
                ),
              ),
            ],
            content: Container(
              width: MediaQuery.of(context).size.width / 2,
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: DropdownIdMenu(
                        initialValue: _userId,
                        menuItems: _menuItems,
                        onChanged: widget._group == null ? _setUserId : null,
                      ),
                    ),
                    TextFormField(
                      controller: _updateDurationSecondsController,
                      decoration: InputDecoration(
                        hintText: 'check_iots_state_period'.tr(),
                      ),
                      validator: _updateDurationSecondsValidator,
                    ),
                    TextFormField(
                      controller: _lastIotChangesTimeUnixController,
                      decoration: InputDecoration(
                        hintText: 'last_iot_changes'.tr(),
                      ),
                      validator: _lastIotChangesTimeUnixValidator,
                    ),
                  ],
                ),
              ),
            ),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  @override
  void dispose() {
    _updateDurationSecondsController.dispose();
    _lastIotChangesTimeUnixController.dispose();
    super.dispose();
  }
}
