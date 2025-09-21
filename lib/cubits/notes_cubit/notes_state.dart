import 'package:notes_app/models/notes_model.dart';

class NotesState {} 

class NotesInitailState extends NotesState {}

class NotesSuccessfulState extends NotesState {
  final  List<NotesModel> notes ;
    
  NotesSuccessfulState(this.notes);
}

class NotesFielurState extends NotesState {
  final String errMessage ;

  NotesFielurState(this.errMessage);
}