// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'congratulations_state.dart';
part 'congratulations_cubit.freezed.dart';

class CongratulationsCubit extends Cubit<CongratulationsState> {
  CongratulationsCubit() : super(const CongratulationsState.initial());
}
