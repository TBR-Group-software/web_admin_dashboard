import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:web_admin_dashboard/domain/entities/user.dart';
import 'package:web_admin_dashboard/utils/validators.dart';

class UserInfoDialog extends StatefulWidget {
  const UserInfoDialog({
    required Function(User) callback,
    User? user,
    Key? key,
  })  : _callback = callback,
        _user = user,
        super(key: key);

  final User? _user;
  final Function(User) _callback;

  @override
  _UserInfoDialogState createState() => _UserInfoDialogState();
}

class _UserInfoDialogState extends State<UserInfoDialog> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();

  String _role = 'employee';

  final List<DropdownMenuItem<String>> _menuItems = <DropdownMenuItem<String>>[
    DropdownMenuItem<String>(
      value: 'admin',
      child: Text('admin'.tr()),
    ),
    DropdownMenuItem<String>(
      value: 'manager',
      child: Text('manager'.tr()),
    ),
    DropdownMenuItem<String>(
      value: 'employee',
      child: Text('employee'.tr()),
    ),
    DropdownMenuItem<String>(
      value: 'observer',
      child: Text('observer'.tr()),
    ),
    DropdownMenuItem<String>(
      value: 'locked',
      child: Text('locked'.tr()),
    ),
  ];

  String? _passwordValidator(String? value) {
    final String passwordNotValidMessage = 'password_not_valid'.tr();
    if (widget._user == null) {
      if (value == null || value.isEmpty) {
        return passwordNotValidMessage;
      }
    }
  }

  String? _fullNameValidator(String? value) {
    final String fullNameNotValidMessage = 'full name not valid'.tr();
    if (value == null || value.isEmpty) {
      return fullNameNotValidMessage;
    }
  }

  @override
  void initState() {
    if (widget._user != null) {
      _emailController.text = widget._user!.email!;
      _fullNameController.text = widget._user!.fullName!;
      _role = widget._user!.role!;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
            if (_formKey.currentState!.validate()) {
              final User user = User(
                id: widget._user != null ? widget._user!.id : null,
                email: _emailController.text,
                password: _passwordController.text,
                role: _role,
                fullName: _fullNameController.text,
              );
              widget._callback(user);
              Navigator.pop(context);
            }
          },
          child: Text(
            widget._user == null ? 'add'.tr() : 'edit'.tr(),
          ),
        ),
      ],
      content: Container(
        width: MediaQuery.of(context).size.width / 3,
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'email'.tr(),
                ),
                validator: emailValidator,
              ),
              if (widget._user == null)
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    hintText: 'password'.tr(),
                  ),
                  validator: _passwordValidator,
                ),
              TextFormField(
                controller: _fullNameController,
                decoration: InputDecoration(
                  hintText: 'full_name'.tr(),
                ),
                validator: _fullNameValidator,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: DropdownButton<String>(
                  items: _menuItems,
                  value: _role,
                  onChanged: (String? value) {
                    if (value != null) {
                      setState(() {
                        _role = value;
                      });
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _fullNameController.dispose();
    super.dispose();
  }
}
