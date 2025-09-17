import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_form.dart';


class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key, this.padding} );
  // final String hint ;
  final double? padding ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30 , horizontal: 25),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}



