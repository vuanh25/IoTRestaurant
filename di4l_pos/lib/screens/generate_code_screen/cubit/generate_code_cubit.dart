import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_code_state.dart';
part 'generate_code_cubit.freezed.dart';

class GenerateCodeCubit extends Cubit<GenerateCodeState> {
  /// MARK: - Initials;
  GenerateCodeCubit() : super(GenerateCodeState.initial());
}
