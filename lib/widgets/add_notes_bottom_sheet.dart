import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key, this.padding});
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),


      child: BlocConsumer<AddNoteCubit , AddNoteStates>(

        listener: (context, state) {
      
          if (state is AddNoteFialurState) {
      
            print("there was an error${state.errMessage}");
      
          } else if (state is AddNoteSuccessFullState) {

            BlocProvider.of<NotesCubit>(context).featchAllNotes(); // Refresh Data 

              Navigator.pop(context) ;
              
          }
        },
        builder: (context, state) {
          return AbsorbPointer( 
            absorbing: state is AddNoteLoadingState ? true : false ,
            child: Padding(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom
               , left: 25 , right: 25 , top: 25), //
              child: SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        },
      ),
    );
  }
}
