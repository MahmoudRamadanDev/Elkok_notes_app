import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/simble_bloc_observer.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/views/notes_view.dart';

void main () async {

  Bloc.observer = SimbleBlocObserver() ;

  await Hive.initFlutter() ;

  Hive.registerAdapter(NotesModelAdapter());

  await Hive.openBox<NotesModel>(kNotesBox) ;
  
  runApp(const NotesApp());
}



class NotesApp extends StatelessWidget {
const  NotesApp({super.key}) ;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
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