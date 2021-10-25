import 'package:flutter/material.dart';

class DropdownStringMenu extends StatefulWidget {
  const DropdownStringMenu({
    required String initialValue,
    required List<DropdownMenuItem<String>> menuItems,
    required Function(String) onChanged,
    Key? key,
  })  : _initialValue = initialValue,
        _menuItems = menuItems,
        _onChanged = onChanged,
        super(key: key);

  final String _initialValue;
  final List<DropdownMenuItem<String>> _menuItems;
  final Function(String) _onChanged;

  @override
  _DropdownStringMenuState createState() => _DropdownStringMenuState();
}

class _DropdownStringMenuState extends State<DropdownStringMenu> {
  late String _value;

  void _setId(String? value) {
    if (value != null) {
      widget._onChanged(value);
      setState(() {
        _value = value;
      });
    }
  }

  @override
  void initState() {
    _value = widget._initialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _value,
      items: widget._menuItems,
      onChanged: _setId,
    );
  }
}
