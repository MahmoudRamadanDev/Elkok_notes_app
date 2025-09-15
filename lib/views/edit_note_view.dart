import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String editViewId = "EditNoteView" ; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              CustomAppBar(text: "EditNote", icon: Icons.check) ,
              SizedBox(height: 30,),
              CustomTextField(hint: "Title"),
              SizedBox(height: 20,),
              CustomTextField(hint: "Content" , padding: 70,),
            ],
          ),
        ),
      ),
    );
  }
}