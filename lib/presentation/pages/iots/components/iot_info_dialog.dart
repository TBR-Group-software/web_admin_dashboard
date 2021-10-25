import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_admin_dashboard/dependency_injection.dart' as di;
import 'package:web_admin_dashboard/domain/entities/group.dart';
import 'package:web_admin_dashboard/domain/entities/iot.dart';
import 'package:web_admin_dashboard/domain/entities/user.dart';
import 'package:web_admin_dashboard/presentation/blocs/groups/groups_bloc.dart';
import 'package:web_admin_dashboard/presentation/blocs/users/users_bloc.dart';
import 'package:web_admin_dashboard/presentation/widgets/dropdown_id_menu.dart';
import 'package:web_admin_dashboard/presentation/widgets/dropdown_string_menu.dart';

class IotInfoDialog extends StatefulWidget {
  const IotInfoDialog({
    required Function(Iot) callback,
    Iot? iot,
    Key? key,
  })  : _callback = callback,
        _iot = iot,
        super(key: key);

  final Iot? _iot;
  final Function(Iot) _callback;

  @override
  _IotInfoDialogState createState() => _IotInfoDialogState();
}

class _IotInfoDialogState extends State<IotInfoDialog> {
  final UsersBloc _usersBloc = di.sl.get();
  final GroupsBloc _groupsBloc = di.sl.get();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _longitudeController = TextEditingController();
  final TextEditingController _latitudeController = TextEditingController();
  final TextEditingController _lastUpdateTimeUnix = TextEditingController();

  int? _userId;
  final List<DropdownMenuItem<int>> _userMenuItems = <DropdownMenuItem<int>>[];

  int? _groupId;
  final List<DropdownMenuItem<int>> _groupMenuItems = <DropdownMenuItem<int>>[];

  String? _iotState;
  final List<DropdownMenuItem<String>> _iotStateMenuItems =
      <DropdownMenuItem<String>>[
    DropdownMenuItem<String>(
      value: 'nothing',
      child: Text(
        'nothing'.tr(),
      ),
    ),
    DropdownMenuItem<String>(
      value: 'active',
      child: Text(
        'active'.tr(),
      ),
    ),
    DropdownMenuItem<String>(
      value: 'lost',
      child: Text(
        'lost'.tr(),
      ),
    ),
  ];

  String? _type;
  final List<DropdownMenuItem<String>> _typeMenuItems =
      <DropdownMenuItem<String>>[
    DropdownMenuItem<String>(
      value: 'gyroscope',
      child: Text(
        'gyroscope'.tr(),
      ),
    ),
    DropdownMenuItem<String>(
      value: 'microphone',
      child: Text(
        'microphone'.tr(),
      ),
    ),
  ];

  void _setUserId(int? value) {
    if (value != null) {
      _userId = value;
    }
  }

  void _setGroupId(int? value) {
    if (value != null) {
      _groupId = value;
    }
  }

  void _setIotState(String value) {
    _iotState = value;
  }

  void _setType(String value) {
    _type = value;
  }

  void _setMenuItems(List<User> users) {
    _userMenuItems.clear();
    for (int i = 0; i < users.length; i++) {
      _userMenuItems.add(DropdownMenuItem<int>(
        value: users[i].id!,
        child: Text(
          users[i].email!,
        ),
      ));
    }
    if (widget._iot != null) {
      _userId = widget._iot!.user!.id!;
    } else if (_userMenuItems.isNotEmpty) {
      _userId = _userMenuItems.first.value;
    }
  }

  void _setGroupItems(List<Group> groups) {
    _groupMenuItems.clear();
    for (int i = 0; i < groups.length; i++) {
      _groupMenuItems.add(DropdownMenuItem<int>(
        value: groups[i].id!,
        child: Text(
          groups[i].id!.toString(),
        ),
      ));
    }
    if (widget._iot != null) {
      _groupId = widget._iot!.group!.id!;
    } else if (_groupMenuItems.isNotEmpty) {
      _groupId = _groupMenuItems.first.value;
    }
  }

  String? _longitudeValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'filed_is_empty'.tr();
    } else if (double.tryParse(value) == null) {
      return 'field_contains_non_numeric_symbol'.tr();
    } else if (double.parse(value) < -180 || double.parse(value) > 180) {
      return 'longitude_need_to'.tr();
    }
  }

  String? _latitudeValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'filed_is_empty'.tr();
    } else if (double.tryParse(value) == null) {
      return 'field_contains_non_numeric_symbol'.tr();
    } else if (double.parse(value) < -90 || double.parse(value) > 90) {
      return 'latitude_need_to'.tr();
    }
  }

  String? _lastUpdateTimeUnixValidator(String? value) {
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
    if (widget._iot != null) {
      _longitudeController.text = widget._iot!.longitude.toString();
      _latitudeController.text = widget._iot!.latitude.toString();
      _lastUpdateTimeUnix.text = widget._iot!.lastIotChangesTimeUnix.toString();
      _iotState = widget._iot!.state;
      _type = widget._iot!.type;
    } else {
      _iotState = _iotStateMenuItems.first.value;
      _type = _typeMenuItems.first.value;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsersBloc, UsersBlocState>(
      bloc: _usersBloc,
      builder: (BuildContext context, UsersBlocState usersBlocSnapshot) {
        return BlocBuilder<GroupsBloc, GroupsBlocState>(
          bloc: _groupsBloc,
          builder: (BuildContext context, GroupsBlocState groupsBlocSnapshot) {
            if (usersBlocSnapshot.status == UsersBlocStatus.Loaded &&
                groupsBlocSnapshot.status == GroupsBlocStatus.Loaded) {
              _setMenuItems(usersBlocSnapshot.users!);
              _setGroupItems(groupsBlocSnapshot.groups!);
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
                      if (_formKey.currentState!.validate() &&
                          _userId != null &&
                          _groupId != null) {
                        final Iot iot = Iot(
                          id: widget._iot != null ? widget._iot!.id : null,
                          user: widget._iot == null
                              ? User(
                                  id: _userId,
                                )
                              : null,
                          group: widget._iot == null
                              ? Group(
                                  id: _groupId,
                                )
                              : null,
                          longitude: double.parse(_longitudeController.text),
                          latitude: double.parse(_latitudeController.text),
                          lastIotChangesTimeUnix:
                              double.parse(_lastUpdateTimeUnix.text).toInt(),
                          state: _iotState!,
                          type: _type!,
                        );
                        widget._callback(iot);
                        Navigator.pop(context);
                      }
                    },
                    child: Text(
                      widget._iot == null ? 'add'.tr() : 'edit'.tr(),
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
                            menuItems: _userMenuItems,
                            onChanged: widget._iot == null ? _setUserId : null,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'group'.tr(),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              DropdownIdMenu(
                                initialValue: _groupId,
                                menuItems: _groupMenuItems,
                                onChanged: widget._iot == null ? _setGroupId : null,
                              ),
                            ],
                          ),
                        ),
                        TextFormField(
                          controller: _longitudeController,
                          decoration: InputDecoration(
                            hintText: 'iot_longitude'.tr(),
                          ),
                          validator: _longitudeValidator,
                        ),
                        TextFormField(
                          controller: _latitudeController,
                          decoration: InputDecoration(
                            hintText: 'iot_latitude'.tr(),
                          ),
                          validator: _latitudeValidator,
                        ),
                        TextFormField(
                          controller: _lastUpdateTimeUnix,
                          decoration: InputDecoration(
                            hintText: 'iot_last_update_time'.tr(),
                          ),
                          validator: _lastUpdateTimeUnixValidator,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: DropdownStringMenu(
                            initialValue: _iotState!,
                            menuItems: _iotStateMenuItems,
                            onChanged: _setIotState,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: DropdownStringMenu(
                            initialValue: _type!,
                            menuItems: _typeMenuItems,
                            onChanged: _setType,
                          ),
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
      },
    );
  }

  @override
  void dispose() {
    _longitudeController.dispose();
    _latitudeController.dispose();
    _lastUpdateTimeUnix.dispose();
    super.dispose();
  }
}
