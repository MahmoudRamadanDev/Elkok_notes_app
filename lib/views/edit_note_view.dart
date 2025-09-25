import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.note});
  static String editViewId = "EditNoteView" ; 
  final NotesModel note ;
  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {

  String? title , subTitle ;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              CustomAppBar(text: "EditNote", icon: Icons.check , onPressed: () {

                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = subTitle ?? widget.note.subTitle;
                
                widget.note.save();

                BlocProvider.of<NotesCubit>(context).featchAllNotes();
                Navigator.pop(context) ;
              },) ,
              SizedBox(height: 30,),
              CustomTextField(hint: widget.note.title , onChanged: (value) {
                title = value ;
              },),
              SizedBox(height: 20,),
              CustomTextField(hint: widget.note.subTitle , padding: 70, onChanged: (value) {
                subTitle = value ;
              }, ),
            ],
          ),
        ),
      ),
    );
  }
}