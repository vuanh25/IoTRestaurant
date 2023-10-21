// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_note_state.dart';
part 'add_note_cubit.freezed.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(const AddNoteState.initial());
}
