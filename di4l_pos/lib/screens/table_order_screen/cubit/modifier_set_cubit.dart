import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/modifier_set/modifier_set_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'modifier_set_state.dart';
part 'modifier_set_cubit.freezed.dart';

class ModifierCubit extends Cubit<ModifierState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();
  ModifierCubit()
      : super(const ModifierState.initial(data: ModifierStateData()));

  Future<void> getModifiers() async {
    try {
      emit(ModifierState.status(
          data: state.data?.copyWith(status: StatusType.loading)));
      final modifierSetResponse = await _dataRepository.getModifiers();
      emit(ModifierState.getModifiers(
          data: state.data?.copyWith(
              status: StatusType.loaded,
              modifierSets: modifierSetResponse.data ?? [])));
    } catch (error) {
      emit(
        ModifierState.status(
          data: state.data?.copyWith(status: StatusType.error),
        ),
      );
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<List<Variations>> getVariationsFromProductId(int productId) async {
    try {
      emit(ModifierState.status(
          data: state.data?.copyWith(status: StatusType.loading)));
      final modifierResponse = await _dataRepository.getModifiers();
      for (var modifier in modifierResponse.data!) {
        for (var modifierProduct in modifier.modifierProducts!) {
          if (modifierProduct.id == productId) {
            return modifier.variations!;
          }
        }
      }
      emit(ModifierState.getModifiers(
          data: state.data?.copyWith(
              status: StatusType.loaded,
              modifierSets: modifierResponse.data ?? [])));
    } catch (error) {
      emit(
        ModifierState.status(
          data: state.data?.copyWith(status: StatusType.error),
        ),
      );
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
    return [];
  }
}
