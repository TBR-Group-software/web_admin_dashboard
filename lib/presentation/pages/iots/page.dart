import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_admin_dashboard/dependency_injection.dart' as di;
import 'package:web_admin_dashboard/domain/entities/iot.dart';
import 'package:web_admin_dashboard/presentation/blocs/iots/iots_bloc.dart';
import 'package:web_admin_dashboard/presentation/pages/iots/components/iot_info_dialog.dart';
import 'package:web_admin_dashboard/presentation/pages/iots/components/iots_list.dart';
import 'package:web_admin_dashboard/presentation/widgets/delete_button.dart';
import 'package:web_admin_dashboard/presentation/widgets/edit_button.dart';
import 'package:web_admin_dashboard/presentation/widgets/success_operation_dialog.dart';



class IotsPage extends StatefulWidget {
  @override
  _IotsPageState createState() => _IotsPageState();
}

class _IotsPageState extends State<IotsPage> {
  final IotsBloc _iotsBloc = di.sl.get();

  final GlobalKey<EditButtonState> _editButtonKey =
  GlobalKey<EditButtonState>();
  final GlobalKey<DeleteButtonState> _deleteButtonKey =
  GlobalKey<DeleteButtonState>();
  List<Iot> _iots = <Iot>[];
  List<bool> _tilesCheckState = <bool>[];

  void _addIotDialog() {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return IotInfoDialog(
          callback: (Iot iot) {
            _editButtonKey.currentState!.setActiveState(false);
            _deleteButtonKey.currentState!.setActiveState(false);
            _iotsBloc.add(IotsBlocEvent.createIot(iot));
          },
        );
      },
    );
  }

  void _editIotDialog() {
    Iot? iot;
    for (int i = 0; i < _tilesCheckState.length; i++) {
      if (_tilesCheckState[i]) {
        iot = _iots[i];
        break;
      }
    }
    if (iot != null) {
      showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return IotInfoDialog(
            iot: iot,
            callback: (Iot iot) {
              _editButtonKey.currentState!.setActiveState(false);
              _deleteButtonKey.currentState!.setActiveState(false);
              _iotsBloc.add(IotsBlocEvent.updateIot(iot));
            },
          );
        },
      );
    }
  }

  void _deleteUsers() {
    final List<int> ids = <int>[];
    for (int i = 0; i < _tilesCheckState.length; i++) {
      if (_tilesCheckState[i]) {
        ids.add(_iots[i].id!);
      }
    }
    if (ids.isNotEmpty) {
      _editButtonKey.currentState!.setActiveState(false);
      _deleteButtonKey.currentState!.setActiveState(false);
      _iotsBloc.add(IotsBlocEvent.deleteIots(ids));
    }
  }

  void _loadIots() {
    _iotsBloc.add(const IotsBlocEvent.getIots());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<IotsBloc, IotsBlocState>(
      bloc: _iotsBloc,
      listener: (BuildContext context, IotsBlocState snapshot) {
        if (snapshot.status == IotsBlocStatus.OperationSuccess) {
          showDialog<void>(
            context: context,
            builder: (BuildContext context) {
              return const SuccessOperationDialog();
            },
          );
        }
      },
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.white54,
            width: double.infinity,
            padding: const EdgeInsets.only(
              top: 10.0,
              left: 20.0,
              bottom: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                OutlinedButton(
                  onPressed: _addIotDialog,
                  child: Text(
                    'add'.tr(),
                  ),
                ),
                const SizedBox(
                  width: 15.0,
                ),
                EditButton(
                  key: _editButtonKey,
                  editElement: _editIotDialog,
                ),
                const SizedBox(
                  width: 15.0,
                ),
                DeleteButton(
                  key: _deleteButtonKey,
                  deleteElements: _deleteUsers,
                ),
                const SizedBox(
                  width: 15.0,
                ),
                IconButton(
                  icon: const Icon(
                    Icons.update,
                  ),
                  onPressed: _loadIots,
                ),
              ],
            ),
          ),
          Container(
            height: 1.0,
            width: double.infinity,
            color: Colors.grey,
          ),
          BlocBuilder<IotsBloc, IotsBlocState>(
            bloc: _iotsBloc,
            builder: (BuildContext context, IotsBlocState snapshot) {
              if (snapshot.status == IotsBlocStatus.Error) {
                return Center(
                  child: Text(
                    snapshot.error.toString(),
                  ),
                );
              } else if (snapshot.status == IotsBlocStatus.Loading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              _iots = snapshot.iots!;
              _tilesCheckState = List<bool>.generate(
                  snapshot.iots!.length, (int index) => false);
              return IotsList(
                iotsInfo: snapshot.iots!,
                tilesCheckState: _tilesCheckState,
                tileCheckCallback: (int index, bool isChecked) {
                  _tilesCheckState[index] = isChecked;
                  if (_tilesCheckState.contains(true)) {
                    _editButtonKey.currentState!.setActiveState(true);
                    _deleteButtonKey.currentState!.setActiveState(true);
                  } else {
                    _editButtonKey.currentState!.setActiveState(false);
                    _deleteButtonKey.currentState!.setActiveState(false);
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
