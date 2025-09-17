import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/views/notes_view.dart';

void main () async {
  await Hive.initFlutter() ;
  await Hive.openBox(kNotesBox) ;
  runApp(const NotesApp());
}


class NotesApp extends StatelessWidget {
const  NotesApp({super.key}) ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Poppins" ,
        brightness: Brightness.dark,
      ),
      
      debugShowCheckedModeBanner: false,
      routes: {
        NotesView.id : (context) => NotesView() ,
        EditNoteView.editViewId : (context) => EditNoteView() ,
      } ,
      initialRoute: NotesView.id,
    );
  }
}