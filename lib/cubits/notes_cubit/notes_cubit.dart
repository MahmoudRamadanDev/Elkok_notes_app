import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/notes_cubit/notes_state.dart';
import 'package:notes_app/models/notes_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super (NotesInitailState()) ;
    List<NotesModel>? notes ;
  featchAllNotes () {
    var notesBox = Hive.box<NotesModel>(kNotesBox);

      notes = notesBox.values.toList() ;

    emit(NotesSuccessfulState(notes!));
    
  }
}