import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/views/notes_view.dart';

void main () async {
  await Hive.initFlutter() ;
  await Hive.openBox(kNotesBox) ;
  Hive.registerAdapter(NotesModelAdapter());
  runApp(const NotesApp());
}



class NotesApp extends StatelessWidget {
const  NotesApp({super.key}) ;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddNoteCubit>(create:  (context) => AddNoteCubit() ),
      ],

      child: MaterialApp(
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
      ),
    );
  }
}