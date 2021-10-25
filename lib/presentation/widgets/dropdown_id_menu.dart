import 'package:flutter/material.dart';

class DropdownIdMenu extends StatefulWidget {
  const DropdownIdMenu({
    required int? initialValue,
    required List<DropdownMenuItem<int>> menuItems,
    required Function(int)? onChanged,
    Key? key,
  })  : _initialValue = initialValue,
        _menuItems = menuItems,
        _onChanged = onChanged,
        super(key: key);

  final int? _initialValue;
  final List<DropdownMenuItem<int>> _menuItems;
  final Function(int)? _onChanged;

  @override
  _DropdownIdMenuState createState() => _DropdownIdMenuState();
}

class _DropdownIdMenuState extends State<DropdownIdMenu> {
  int? _id;

  void _setId(int? value) {
    if (value != null) {
      widget._onChanged!(value);
      setState(() {
        _id = value;
      });
    }
  }

  @override
  void initState() {
    _id = widget._initialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      value: _id,
      items: widget._menuItems,
      onChanged: widget._onChanged == null ? null : _setId,
    );
  }
}
