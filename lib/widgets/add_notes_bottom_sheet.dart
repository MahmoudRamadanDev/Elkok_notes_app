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
        child: Column(
          children: [
          CustomTextField(hint: "Title"),
          SizedBox(height: 20,),
          CustomTextField(hint: "Content" , padding: 70,),
          SizedBox(height: 70,),
          CustomButton(),
          SizedBox(height: 30,),
        ],), 
          
        
      ),
    );
  }
}



