import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/delivery/request/connect_ghtk_request.dart';
import 'package:di4l_pos/models/delivery/request/save_connect_ghtk_request.dart';
import 'package:di4l_pos/models/delivery/response/connect_ghtk_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'connect_ghtk_state.dart';
part 'connect_ghtk_cubit.freezed.dart';

class ConnectGhtkCubit extends Cubit<ConnectGhtkState> {
  final _dataRepository = getIt<DataRepository>();

  ConnectGhtkCubit()
      : super(const ConnectGhtkState.initial(data: ConnectGhtkStateData()));

  Future<void> getLocationsGHTK({required dynamic token}) async {
    try {
      UIHelpers.showLoading();
      emit(ConnectGhtkState.error(data: state.data!.copyWith(error: '')));
      if (token.isEmpty) {
        emit(ConnectGhtkState.error(
            data: state.data!.copyWith(error: 'Token is Empty')));
      } else {
        final _request = ConnectGhtkRequest(token: token);
        final _response = await _dataRepository.connectGHTK(request: _request);
        if (_response.success == true) {
          emit(ConnectGhtkState.error(
              data: state.data!.copyWith(
                  error: 'Success', locationsGHTK: _response.data ?? [])));
        } else {
          emit(ConnectGhtkState.error(
              data: state.data!.copyWith(error: 'Token không hợp lệ')));
        }
      }
    } catch (error) {
      debugPrint('Login Error: $error');
      // Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      UIHelpers.dismissLoading();
    }
    // try {
    //   // String check = await checkEmpty(token);
    //   // if (check.isNotEmpty) {
    //   //   emit(ConnectGhtkState.error(data: state.data!.copyWith(error: check)));
    //   //   await Future<void>.delayed(const Duration(seconds: 1));
    //   //   emit(ConnectGhtkState.error(
    //   //       data: state.data!.copyWith(error: 'Token is Empty')));
    //   // } else {
    //   UIHelpers.showLoading();
    //   // emit(ConnectGhtkState.status(
    //   //     data: state.data!
    //   //         .copyWith(status: StatusType.loading, error: 'Loading...')));
    //   final _request = ConnectGhtkRequest(token: token);
    //   final _response = await _dataRepository.connectGHTK(request: _request);
    //   // emit(ConnectGhtkState.status(
    //   //     data: state.data!
    //   //         .copyWith(status: StatusType.loading, error: 'Loading...')));
    //   if (_response.data == null) {
    //     emit(ConnectGhtkState.status(
    //         data: state.data!.copyWith(
    //             status: StatusType.error,
    //             locationsGHTK: _response.data ?? [],
    //             error: _response.message ?? '')));
    //     await Future.delayed(
    //         const Duration(seconds: 1), () => navigator!.pop());
    //   } else {
    //     // await Future.delayed(
    //     //     const Duration(seconds: 1), () => navigator!.pop());
    //     emit(ConnectGhtkState.status(
    //         data: state.data!.copyWith(
    //             status: StatusType.loaded,
    //             locationsGHTK: _response.data ?? [],
    //             error: '${_response.success}')));

    //     // }
    //   }
    // } catch (error) {
    //   debugPrint('Error: $error');
    //   emit(ConnectGhtkState.status(
    //       data: state.data!.copyWith(
    //           status: StatusType.error, error: 'Something went wrong')));
    //   Helpers.handleErrorApp(error: error);
    // } finally {
    //   // Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
    //   // getLocationsGHTK(token: token);
    //   // emit(ConnectGhtkState.status());
    //   UIHelpers.dismissLoading();
    // }
  }

  Future<void> getLocationsGhtkTokenNotNull({required dynamic token}) async {
    try {
      UIHelpers.showLoading();
      emit(ConnectGhtkState.error(data: state.data!.copyWith(error: '')));
      if (token.isEmpty) {
        emit(ConnectGhtkState.error(
            data: state.data!.copyWith(error: 'Token is Empty')));
      } else {
        final _request = ConnectGhtkRequest(token: token);
        final _response = await _dataRepository.connectGHTK(request: _request);
        if (_response.success == true) {
          emit(ConnectGhtkState.error(
              data: state.data!.copyWith(
                  error: 'Done', locationsGHTK: _response.data ?? [])));
        } else {
          emit(ConnectGhtkState.error(
              data: state.data!.copyWith(error: 'Token không hợp lệ')));
        }
      }
    } catch (error) {
      debugPrint('Login Error: $error');
      // Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> saveConnectGHTK(
      {required int ghtkId,
      required String address,
      required dynamic tokenKey}) async {
    try {
      // if (name.isEmpty) {
      //   emit(ConnectGhtkState.error(
      //       data: state.data!.copyWith(error: 'Name is Required')));
      //   await Future<void>.delayed(const Duration(seconds: 1));
      emit(ConnectGhtkState.error(data: state.data!.copyWith(error: '')));

      emit(ConnectGhtkState.status(
          data: state.data!
              .copyWith(status: StatusType.loading, error: 'Loading...')));
      final _request = SaveConnectGhtkRequest(
        ghtkId: ghtkId,
        address: address,
        deliveryPartnerId: 2,
        tokenKey: tokenKey,
      );
      final _response =
          await _dataRepository.saveConnectGHTK(request: _request);
      if (_response.status == true) {
        // await Future.delayed(
        //     const Duration(seconds: 1), () => navigator!.pop());
        emit(ConnectGhtkState.status(
            data: state.data!
                .copyWith(status: StatusType.loaded, error: 'Success')));
      }
    } catch (error) {
      emit(ConnectGhtkState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong!')));
      debugPrint('Add Customer Group Error: $error');
    } finally {
      // Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
    }
  }

  // Future<void> refreshLocationsGHTK({required dynamic token}) async {
  //   try {
  //     // String check = await checkEmpty(token);
  //     // if (check.isNotEmpty) {
  //     //   emit(ConnectGhtkState.error(data: state.data!.copyWith(error: check)));
  //     //   await Future<void>.delayed(const Duration(seconds: 1));
  //     //   emit(ConnectGhtkState.error(
  //     //       data: state.data!.copyWith(error: 'Token is Empty')));
  //     // } else {
  //     // emit(ConnectGhtkState.status(
  //     //     data: state.data!
  //     //         .copyWith(status: StatusType.loading, error: 'Loading...')));
  //     final _request = ConnectGhtkRequest(token: token);
  //     final _response = await _dataRepository.connectGHTK(request: _request);
  //     // if (_response.success != true) {
  //     //   emit(ConnectGhtkState.status(
  //     //       data: state.data!.copyWith(
  //     //           status: StatusType.error,
  //     //           locationsGHTK: _response.data ?? [],
  //     //           error: _response.message ?? '')));
  //     //   await Future.delayed(
  //     //       const Duration(seconds: 1), () => navigator!.pop());
  //     // } else {
  //     emit(ConnectGhtkState.status(
  //         data: state.data!.copyWith(
  //             status: StatusType.loaded,
  //             locationsGHTK: _response.data ?? [],
  //             error: '${_response.success}')));
  //     // await Future.delayed(
  //     //     const Duration(seconds: 1), () => navigator!.pop());
  //     // }
  //     // }
  //   } catch (error) {
  //     debugPrint('Error: $error');
  //     emit(ConnectGhtkState.status(
  //         data: state.data!.copyWith(
  //             status: StatusType.error, error: 'Something went wrong')));
  //     Helpers.handleErrorApp(error: error);
  //   } finally {
  //     // Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
  //   }
  // }

  void getLocationGHTK(LocationGHTK locationGHTK) {
    emit(ConnectGhtkState.getLocations(
        data: state.data?.copyWith(locationGHTK: locationGHTK)));
  }

  Future<String> checkEmpty(dynamic token) async {
    if (token.isEmpty) {
      return 'Token is Required';
    } else {
      return '';
    }
  }
}
