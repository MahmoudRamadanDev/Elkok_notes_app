import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_state.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  // final colors = const [
  //   Colors.amberAccent,
  //   Colors.blue,
  //   Colors.white,
  //   Colors.deepPurple,
  //   Colors.pinkAccent,
  //   Colors.cyanAccent,
  // ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        return ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: state is NotesSuccessfulState ? state.notes.length : 0,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: CustomNoteItem(color: null),
            );
          },
        );
      },
    );
  }
}
