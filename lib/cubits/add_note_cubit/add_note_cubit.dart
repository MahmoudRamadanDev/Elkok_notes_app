import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app/models/notes_model.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(AddNoteInitialState());

  addNote(NotesModel note) async {
    emit(AddNoteLoadingState());
    try {
      var notes = Hive.box<NotesModel>(kNotesBox);
    await  notes.add(note);
      emit(AddNoteSuccessFullState());
    } catch (e) {
      emit(AddNoteFialurState(e.toString()));
    }
  }
}
