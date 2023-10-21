import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/get_link/request/into_link_request.dart';
import 'package:di4l_pos/models/get_link/response/get_link_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/storage/app_prefs.dart';
import '../../../common/ui_helpers.dart';

part 'get_link_state.dart';
part 'get_link_cubit.freezed.dart';

class GetLinkCubit extends Cubit<GetLinkState> {
  final _dataRepository = getIt<DataRepository>();
  final _appPrefs = getIt<AppPref>();

  GetLinkCubit() : super(const GetLinkState.initial(data: GetLinkStateData()));

  Future<void> getLinks() async {
    try {
      // UIHelpers.showLoading();

      emit(GetLinkState.status(
          data: state.data?.copyWith(
        status: StatusType.loading,
      )));
      final response = await _dataRepository.getLink();
      emit(GetLinkState.getLinks(
          data: state.data?.copyWith(
              status: StatusType.loaded, links: response.data ?? [])));
    } catch (error) {
      emit(GetLinkState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
      debugPrint('Login Error: $error');
    } finally {
      // UIHelpers.dismissLoading();
    }
  }

  Future<String> intoLink({required String link}) async {
    final request = IntoLinkRequest(refer: link);
    //final response = await _dataRepository.intoLink(request: request);

    try {
      UIHelpers.showLoading();

      emit(GetLinkState.status(
          data: state.data?.copyWith(
        status: StatusType.loading,
      )));
      final response = await Dio().post(
          'https://my.di4l.vn/connector/api/into-link',
          options: Options(
              headers: {
                'Authorization':
                    'Bearer ${(await _appPrefs.getToken())?.accessToken ?? ''}'
              },
              followRedirects: false,
              validateStatus: (status) {
                return status! < 500;
              }),
          data: request.toJson());
      emit(GetLinkState.getLinks(
          data: state.data?.copyWith(
              status: StatusType.loaded, html: response.data.toString())));
      return response.data.toString();
    } catch (error) {
      emit(GetLinkState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
      debugPrint('Error: $error');
    } finally {
      UIHelpers.dismissLoading();
    }
    return 'false';
  }
}
