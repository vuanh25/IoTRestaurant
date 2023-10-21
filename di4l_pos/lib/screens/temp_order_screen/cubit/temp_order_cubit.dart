import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'temp_order_state.dart';
part 'temp_order_cubit.freezed.dart';

class TempOrderCubit extends Cubit<TempOrderState> {
  TempOrderCubit() : super(TempOrderState.initial());
}
