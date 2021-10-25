import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:web_admin_dashboard/domain/entities/iot.dart';

class IotsList extends StatefulWidget {
  const IotsList({
    required List<Iot> iotsInfo,
    required List<bool> tilesCheckState,
    required Function(int, bool) tileCheckCallback,
    Key? key,
  })  : assert(iotsInfo.length == tilesCheckState.length),
        _iotsInfo = iotsInfo,
        _tilesCheckState = tilesCheckState,
        _tileCheckCallback = tileCheckCallback,
        super(key: key);

  final List<Iot> _iotsInfo;
  final List<bool> _tilesCheckState;
  final Function(int, bool) _tileCheckCallback;

  @override
  _IotsListState createState() => _IotsListState();
}

class _IotsListState extends State<IotsList> {
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
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'longitude'.tr() +  ': ' + widget._iotsInfo[index].longitude.toString(),
              ),
              Text(
                'latitude'.tr() +  ': ' + widget._iotsInfo[index].latitude.toString(),
              ),
            ],
          ),
          subtitle: Text(
            widget._iotsInfo[index].state,
          ),
        );
      },
    );
  }
}
