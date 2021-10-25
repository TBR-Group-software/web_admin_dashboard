import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DeleteButton extends StatefulWidget {
  const DeleteButton({
    required Function() deleteElements,
    Key? key,
  })  : _deleteElements = deleteElements,
        super(key: key);

  final Function() _deleteElements;

  @override
  DeleteButtonState createState() => DeleteButtonState();
}

class DeleteButtonState extends State<DeleteButton> {
  bool _isActive = false;

  void setActiveState(bool isActive) {
    setState(() {
      _isActive = isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Text(
        'delete'.tr(),
        style: TextStyle(
          color: _isActive ? Colors.red : null,
        ),
      ),
      onPressed: _isActive ? widget._deleteElements : null,
    );
  }
}
