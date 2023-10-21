import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/user/response/user_list_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';

class UserCubit extends Cubit<UserState> {
  final _dataRepository = getIt<DataRepository>();

  UserCubit() : super(const UserState.initial(data: UserStateData()));

  Future<void> getUsers() async {
    List<UserItem> users = [...state.data!.users];
    int page = state.data!.page! + 1;
    try {
      emit(
        UserState.getUsers(
          data: state.data?.copyWith(
            status: StatusType.loading,
          ),
        ),
      );
      final response = await _dataRepository.getUsers(page: page);
      emit(UserState.getUsers(
        data: state.data?.copyWith(
          page: response.currentPage,
          users: response.data ?? [],
        ),
      ));
      users.addAll(state.data!.users);
      emit(
        UserState.getUsers(
          data: state.data?.copyWith(
            status: StatusType.loaded,
            users: users,
          ),
        ),
      );
    } catch (error) {
      print('User Error $error');
      Helpers.handleErrorApp(
        error: error,
        isShowDialog: true,
      );
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
