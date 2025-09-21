import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/add_notes_bottom_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = "NotesView";
  @override
  Widget build(BuildContext context) {
    return BlocProvider<NotesCubit>(
      create: (context) => NotesCubit(),
      child: Scaffold(
        body: NotesViewBody(),
        floatingActionButton:  FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return AddNotesBottomSheet();
              },
            );
          },
          backgroundColor: Colors.lightBlueAccent,
          child:  Icon(Icons.add),
          shape: CircleBorder(),
        ),
      ),
    );
  }
}
