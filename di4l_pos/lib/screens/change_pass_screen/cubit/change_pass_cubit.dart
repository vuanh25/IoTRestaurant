// ignore_for_file: no_leading_underscores_for_local_identifiers, depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/user/request/change_password_request.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'change_pass_state.dart';
part 'change_pass_cubit.freezed.dart';

class ChangePassCubit extends Cubit<ChangePassState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();

  ChangePassCubit() : super(const ChangePassState.initial());

  /// Change Password
  Future<void> changePassword({
    required String? newPassword,
    String? currentPassword,
  }) async {
    try {
      final _request = ChangePasswordRequest(
        newPassword: newPassword,
        currentPassword: currentPassword,
      );
      final _response = await _dataRepository.updatePassword(request: _request);
      if (_response.success == 1) {
        await UIHelpers.showSnackBar(message: 'change_password_success'.tr);
        await Future.delayed(const Duration(seconds: 1), () {
          Get.back();
        });
      }
    } catch (error) {
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
