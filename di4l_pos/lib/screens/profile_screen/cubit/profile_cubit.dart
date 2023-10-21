import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/models/user/request/update_profile_request.dart';
import 'package:di4l_pos/models/user/response/profile_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:image_picker/image_picker.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final _dataRepository = getIt<DataRepository>();

  ProfileCubit() : super(ProfileState.initial(data: ProfileStateData()));

  Future<void> getProfile() async {
    final response = await _dataRepository.getProfile();
    emit(Profile(data: state.data!.copyWith(profile: response)));
  }

  Future<void> updateProfiles(
      {required String? firstName, required String? lastName}) async {
    try {
      final request =
          UpdateProfileRequest(firstName: firstName, lastName: lastName);
      final response = await _dataRepository.updateProfile(request: request);
      if (response.success == 1) {
        emit(Error(
            data: state.data!.copyWith(error: response.msg!, success: 1)));
      } else {
        emit(Error(data: state.data!.copyWith(error: response.msg!)));
      }
    } catch (error) {
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> updateAvatar() async {
    final response =
        await _dataRepository.updateAvatar(file: state.data?.image);
    emit(ProfileState.error(data: state.data!.copyWith(error: response.msg!)));
  }

  Future<void> selectImage(ImageSource? source) async {
    final _image = await ImagePicker().pickImage(source: source!);
    emit(
      ProfileState.getImage(
          data: state.data!.copyWith(image: File(_image!.path))),
    );
  }
}
