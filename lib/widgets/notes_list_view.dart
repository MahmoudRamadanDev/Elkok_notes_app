import 'package:flutter/material.dart';
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
    return ListView.builder(physics: BouncingScrollPhysics(),itemCount: 10,itemBuilder: (context , index) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: CustomNoteItem(color: null,),
      );
    });
  }
}