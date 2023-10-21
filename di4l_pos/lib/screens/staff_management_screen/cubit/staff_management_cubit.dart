import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:di4l_pos/models/staff_management/response/staff_response.dart';
import 'package:meta/meta.dart';
import 'package:get/get.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:di4l_pos/models/staff_management/response/staff_detail_response.dart';

part 'staff_management_cubit.freezed.dart';
part 'staff_management_state.dart';

class StaffManagementCubit extends Cubit<StaffManagementState> {
  final _dataRepository = getIt<DataRepository>();

  StaffManagementCubit() : super(const StaffManagementState.initial(data: StaffManagementStateData()));

  /// Get Staffs
  Future<void> getStaffs() async {
    try {
      emit(StaffManagementState.status(data: state.data!.copyWith(status: StatusType.loading)));
      final staffsResponse = await _dataRepository.getStaffList();

      Map<String, dynamic> referralSelectionList = {};

      staffsResponse.data!.forEach((e) { 
        referralSelectionList.addAll({e.id.toString() : e.fullName.toString()});
      });

      await getIt<AppPref>().saveStaffList(staffList: referralSelectionList);

      emit(StaffManagementState.getStaffs(
          data: state.data!.copyWith(
        status: StatusType.loaded,
        staffs: staffsResponse.data ?? [],
        staffsOriginal: staffsResponse.data ?? [],
      )));
      
    } catch (error) {
      print(error);
      emit(StaffManagementState.status(data: state.data!.copyWith(status: StatusType.error)));

      Helpers.handleErrorApp(error: error);
    } finally {

    }
  }
}