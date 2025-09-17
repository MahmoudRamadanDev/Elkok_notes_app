class AddNoteStates {}


class AddNoteInitialState extends AddNoteStates {}
class AddNoteFialurState extends AddNoteStates {
  final String errMessage ;
  AddNoteFialurState(this.errMessage);
}
class AddNoteSuccessFullState extends AddNoteStates {}
class AddNoteLoadingState extends AddNoteStates {}
