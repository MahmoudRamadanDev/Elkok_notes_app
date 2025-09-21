import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

  GlobalKey<FormState> formKey = GlobalKey() ;

  AutovalidateMode autoValidateMode = AutovalidateMode.disabled ;

  String? title , subTitle ;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autoValidateMode,
      key: formKey,
      child: Column(
            children: [
            CustomTextField(hint: "Title" , onSaved: (value) {
              title = value ;
            },),
            SizedBox(height: 20,),
            CustomTextField(hint: "Content" , padding: 70,onSaved: (value) {
              subTitle = value ;
            },),
            SizedBox(height: 70,),
            CustomButton (
              onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save() ;
                var note = NotesModel(title: title!, subTitle: subTitle!, color: Colors.amberAccent.toARGB32() , date: DateTime.now().toString());
                BlocProvider.of<AddNoteCubit>(context).addNote(note);
              }else {
                autoValidateMode = AutovalidateMode.always ;
                setState(() {});
              }
            },),
            SizedBox(height: 30,),
          ],),
    ) ;
  }
}