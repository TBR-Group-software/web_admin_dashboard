import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web_admin_dashboard/domain/entities/iot.dart';
import 'package:web_admin_dashboard/domain/use_cases/iot/create_iot_use_case.dart';
import 'package:web_admin_dashboard/domain/use_cases/iot/delete_iot_use_case.dart';
import 'package:web_admin_dashboard/domain/use_cases/iot/get_iots_use_case.dart';
import 'package:web_admin_dashboard/domain/use_cases/iot/update_iot_use_case.dart';

part 'iots_bloc.freezed.dart';
part 'iots_bloc_event.dart';
part 'iots_bloc_state.dart';
part 'iots_bloc_status.dart';

class IotsBloc extends Bloc<IotsBlocEvent, IotsBlocState> {
  final GetIotsUseCase _getIotsUseCase;
  final CreateIotUseCase _createIotUseCase;
  final UpdateIotUseCase _updateIotUseCase;
  final DeleteIotUseCase _deleteIotUseCase;

  IotsBloc(
    this._getIotsUseCase,
    this._createIotUseCase,
    this._updateIotUseCase,
    this._deleteIotUseCase,
  ) : super(const IotsBlocState(IotsBlocStatus.Loading)) {
    add(const IotsBlocEvent.getIots());
  }

  @override
  Stream<IotsBlocState> mapEventToState(IotsBlocEvent event) => event.when(
        getIots: _getIots,
        createIot: _createIot,
        updateIot: _updateIot,
        deleteIots: _deleteIots,
      );

  Stream<IotsBlocState> _getIots() async* {
    yield _loadingState();
    yield await _getIotsUseCase
        .getIot()
        .then((List<Iot> iots) =>
            IotsBlocState(IotsBlocStatus.Loaded, iots: iots))
        .catchError(_errorState);
  }

  Stream<IotsBlocState> _createIot(Iot iot) async* {
    try {
      await _createIotUseCase.createIot(iot);
      yield IotsBlocState(
        IotsBlocStatus.OperationSuccess,
        iots: state.iots,
      );
      add(const IotsBlocEvent.getIots());
    } on Exception catch (e) {
      yield _errorState(e);
    }
  }

  Stream<IotsBlocState> _updateIot(Iot iot) async* {
    try {
      await _updateIotUseCase.updateIot(iot);
      yield IotsBlocState(
        IotsBlocStatus.OperationSuccess,
        iots: state.iots,
      );
      add(const IotsBlocEvent.getIots());
    } on Exception catch (e) {
      yield _errorState(e);
    }
  }

  Stream<IotsBlocState> _deleteIots(List<int> ids) async* {
    try {
      for (int i = 0; i < ids.length; i++) {
        await _deleteIotUseCase.deleteIot(ids[i]);
      }
      yield IotsBlocState(
        IotsBlocStatus.OperationSuccess,
        iots: state.iots,
      );
      add(const IotsBlocEvent.getIots());
    } on Exception catch (e) {
      yield _errorState(e);
    }
  }

  IotsBlocState _loadingState() => IotsBlocState(
        IotsBlocStatus.Loading,
        iots: state.iots,
      );

  IotsBlocState _errorState(Object error) => IotsBlocState(
        IotsBlocStatus.Error,
        iots: state.iots,
        error: error,
      );
}
