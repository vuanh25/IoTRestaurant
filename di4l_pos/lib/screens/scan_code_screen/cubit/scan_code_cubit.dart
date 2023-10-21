import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scan_code_state.dart';
part 'scan_code_cubit.freezed.dart';

class ScanCodeCubit extends Cubit<ScanCodeState> {
  ScanCodeCubit() : super(ScanCodeState.initial());
}
