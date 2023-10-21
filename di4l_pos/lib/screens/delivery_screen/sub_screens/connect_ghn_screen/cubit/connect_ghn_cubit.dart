import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/delivery/request/connect_ghn_request.dart';
import 'package:di4l_pos/models/delivery/request/connect_ghtk_request.dart';
import 'package:di4l_pos/models/delivery/request/phone_ghn_request.dart';
import 'package:di4l_pos/models/delivery/response/locations_ghn_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connect_ghn_state.dart';
part 'connect_ghn_cubit.freezed.dart';

class ConnectGhnCubit extends Cubit<ConnectGhnState> {
  final _dataRepository = getIt<DataRepository>();

  ConnectGhnCubit()
      : super(const ConnectGhnState.initial(data: ConnectGhnStateData()));

  Future<void> getLocationsGHN({required dynamic token}) async {
    try {
      UIHelpers.showLoading();
      emit(ConnectGhnState.error(data: state.data!.copyWith(error: '')));
      if (token.isEmpty) {
        emit(ConnectGhnState.error(
            data: state.data!.copyWith(error: 'Token is Empty')));
      } else {
        // final _request = ConnectGhtkRequest(token: token);
        final _response = await _dataRepository.getLocationsGhn(token: token);
        if (_response.message == 'Success') {
          emit(ConnectGhnState.error(
              data: state.data!.copyWith(
                  error: 'Success',
                  locationsGhn: _response.data?.shops ?? [])));
        } else {
          emit(ConnectGhnState.error(
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

  Future<void> getLocationsGhnTokenNotNull({required dynamic token}) async {
    try {
      UIHelpers.showLoading();
      emit(ConnectGhnState.error(data: state.data!.copyWith(error: '')));
      if (token.isEmpty) {
        emit(ConnectGhnState.error(
            data: state.data!.copyWith(error: 'Token is Empty')));
      } else {
        final _request = ConnectGhtkRequest();
        final _response = await _dataRepository.getLocationsGhn(token: token);
        if (_response.message == 'Success') {
          emit(ConnectGhnState.error(
              data: state.data!.copyWith(
                  error: 'Done', locationsGhn: _response.data?.shops ?? [])));
        } else {
          emit(ConnectGhnState.error(
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

  Future<void> getOtpGHN({required String phoneGhn}) async {
    try {
      UIHelpers.showLoading();
      emit(ConnectGhnState.error(data: state.data!.copyWith(error: '')));
      if (phoneGhn.isEmpty) {
        emit(ConnectGhnState.error(
            data: state.data!.copyWith(error: 'Phone is Empty')));
      } else {
        final _request = PhoneGhnRequest(phoneGhn: phoneGhn);
        final _response = await _dataRepository.getOtpGhn(request: _request);
        if (_response.message == 'Success') {
          emit(ConnectGhnState.error(
              data: state.data!.copyWith(
            error: 'Success',
          )));
        } else {
          emit(ConnectGhnState.error(
              data: state.data!.copyWith(error: 'Phone không hợp lệ')));
        }
      }
    } catch (error) {
      debugPrint('Login Error: $error');
      // Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getOtpGHNAgain({required String phoneGhn}) async {
    try {
      UIHelpers.showLoading();
      emit(ConnectGhnState.error(data: state.data!.copyWith(error: '')));
      if (phoneGhn.isEmpty) {
        emit(ConnectGhnState.error(
            data: state.data!.copyWith(error: 'Phone is Empty')));
      } else {
        final _request = PhoneGhnRequest(phoneGhn: phoneGhn);
        final _response = await _dataRepository.getOtpGhn(request: _request);
        if (_response.message == 'Success') {
          emit(ConnectGhnState.error(
              data: state.data!.copyWith(
            error: 'Done',
          )));
        } else {
          emit(ConnectGhnState.error(
              data: state.data!.copyWith(error: 'Phone không hợp lệ')));
        }
      }
    } catch (error) {
      debugPrint('Login Error: $error');
      // Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> connectGHN(
      {required String phoneGhn,
      required String otp,
      required String shopId,
      required String address,
      int? deliveryPartnerId,
      required String tokenKey}) async {
    try {
      // if (name.isEmpty) {
      //   emit(ConnectGhnState.error(
      //       data: state.data!.copyWith(error: 'Name is Required')));
      //   await Future<void>.delayed(const Duration(seconds: 1));
      emit(ConnectGhnState.error(data: state.data!.copyWith(error: '')));

      emit(ConnectGhnState.status(
          data: state.data!
              .copyWith(status: StatusType.loading, error: 'Loading...')));
      final _request = ConnectGhnRequest(
        phoneGhn: phoneGhn,
        otp: otp,
        shopId: shopId,
        address: address,
        deliveryPartnerId: 1,
        tokenKey: tokenKey,
      );
      final _response = await _dataRepository.connectGHN(request: _request);
      if (_response.code == 200) {
        // await Future.delayed(
        //     const Duration(seconds: 1), () => navigator!.pop());
        emit(ConnectGhnState.status(
            data: state.data!
                .copyWith(status: StatusType.loaded, error: 'Verify')));
      }
    } catch (error) {
      emit(ConnectGhnState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong!')));
      debugPrint('Add Customer Group Error: $error');
    } finally {
      // Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
    }
  }

  void getLocationGHN(Shop locationGHN) {
    emit(ConnectGhnState.getLocationsGhn(
        data: state.data?.copyWith(locationGHN: locationGHN)));
  }
}
