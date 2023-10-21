import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'return_products_state.dart';
part 'return_products_cubit.freezed.dart';

class ReturnProductsCubit extends Cubit<ReturnProductsState> {
  /// MARK: - Initials
  ReturnProductsCubit() : super(ReturnProductsState.initial());

  /// Get Return Products
  Future<void> getReturnProducts() async {
    try {
      UIHelpers.showLoading();
    } catch (error) {
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
