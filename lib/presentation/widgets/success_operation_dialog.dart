import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SuccessOperationDialog extends StatelessWidget {
  const SuccessOperationDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Icon(
            Icons.where_to_vote,
            color: Colors.green,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Text(
            'operation_completed_successfully'.tr(),
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'ok'.tr(),
          ),
        ),
      ],
    );
  }
}