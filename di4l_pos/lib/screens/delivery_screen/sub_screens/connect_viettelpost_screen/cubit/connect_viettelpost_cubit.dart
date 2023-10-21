import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/delivery/request/connect_ghtk_request.dart';
import 'package:di4l_pos/models/delivery/request/connect_viettel_post_request.dart';
import 'package:di4l_pos/models/delivery/request/save_connect_viettel_post_request.dart';
import 'package:di4l_pos/models/delivery/response/connect_viettel_post_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connect_viettelpost_state.dart';
part 'connect_viettelpost_cubit.freezed.dart';

class ConnectViettelpostCubit extends Cubit<ConnectViettelpostState> {
  final _dataRepository = getIt<DataRepository>();

  ConnectViettelpostCubit()
      : super(const ConnectViettelpostState.initial(
            data: ConnectViettelpostStateData()));

  Future<void> connectViettelPost(
      {required String username, required String password}) async {
    try {
      UIHelpers.showLoading();
      emit(
          ConnectViettelpostState.error(data: state.data!.copyWith(error: '')));
      if (username.isEmpty) {
        emit(ConnectViettelpostState.error(
            data: state.data!.copyWith(error: 'Email is Empty')));
      } else if (password.isEmpty) {
        emit(ConnectViettelpostState.error(
            data: state.data!.copyWith(error: 'Password is Empty')));
      } else {
        final request = ConnectViettelPostRequest(
            username: username, password: password, deliveryPartnerId: 3);
        final response =
            await _dataRepository.connectViettelPost(request: request);
        if (response.status == 200) {
          emit(ConnectViettelpostState.error(
              data: state.data!.copyWith(
                  error: 'Success',
                  locationsViettelPost: response.data ?? [],
                  token: response.tokenKey ?? '')));
        } else {
          emit(ConnectViettelpostState.error(
              data: state.data!.copyWith(error: 'Something went wrong!')));
        }
      }
    } catch (error) {
      debugPrint('Login Error: $error');
      // Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getLocationsViettelPostTokenNotNull(
      {required dynamic token}) async {
    try {
      UIHelpers.showLoading();
      emit(
          ConnectViettelpostState.error(data: state.data!.copyWith(error: '')));
      if (token.isEmpty) {
        emit(ConnectViettelpostState.error(
            data: state.data!.copyWith(error: 'Token is Empty')));
      } else {
        final _response =
            await _dataRepository.getLocationsViettelPost(token: token);
        if (_response.status == 200) {
          emit(ConnectViettelpostState.error(
              data: state.data!.copyWith(
                  error: 'Done', locationsViettelPost: _response.data ?? [])));
        } else {
          emit(ConnectViettelpostState.error(
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

  Future<void> saveConnectViettelpost(
      {required String storeAddressId,
      required String address,
      required String tokenKey}) async {
    try {
      // if (name.isEmpty) {
      //   emit(ConnectViettelpostState.error(
      //       data: state.data!.copyWith(error: 'Name is Required')));
      //   await Future<void>.delayed(const Duration(seconds: 1));
      emit(
          ConnectViettelpostState.error(data: state.data!.copyWith(error: '')));

      emit(ConnectViettelpostState.status(
          data: state.data!
              .copyWith(status: StatusType.loading, error: 'Loading...')));
      final _request = SaveConnectViettelPostRequest(
        storeAddressId: storeAddressId,
        address: address,
        deliveryPartnerId: 3,
        tokenKey: tokenKey,
      );
      final _response =
          await _dataRepository.saveConnectViettelPost(request: _request);
      if (_response.status == true) {
        // await Future.delayed(
        //     const Duration(seconds: 1), () => navigator!.pop());
        emit(ConnectViettelpostState.status(
            data: state.data!
                .copyWith(status: StatusType.loaded, error: 'Success')));
      }
    } catch (error) {
      emit(ConnectViettelpostState.status(
          data: state.data!.copyWith(
              status: StatusType.error, error: 'Something went wrong!')));
      debugPrint('Add Customer Group Error: $error');
    } finally {
      // Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
    }
  }

  void getLocationViettelPost(LocationViettelPost locationViettelPost) {
    emit(ConnectViettelpostState.getLocations(
        data: state.data?.copyWith(locationViettelPost: locationViettelPost)));
  }
}
