// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_state.dart';
part 'note_cubit.freezed.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(const NoteState.initial());
}
