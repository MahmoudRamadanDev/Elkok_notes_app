import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key, this.padding});
  // final String hint ;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit , AddNoteStates>(
          listener: (context, state) {

            if ( state is AddNoteFialurState ) {

              print("there was an error${state.errMessage}");

            } else if (state is AddNoteSuccessFullState) {

                Navigator.pop(context) ;
                
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(inAsyncCall: state is AddNoteLoadingState ? true : false, child: AddNoteForm());
          },
        ),
      ),
    );
  }
}
