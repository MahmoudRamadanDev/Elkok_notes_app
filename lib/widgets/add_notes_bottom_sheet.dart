import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key, required this.hint, this.padding} );
  final String hint ;
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
            CustomButton(onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save() ;
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