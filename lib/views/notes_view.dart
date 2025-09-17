import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_notes_bottom_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = "NotesView";    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesViewBody(),
      floatingActionButton:  FloatingActionButton(onPressed: () {
        showModalBottomSheet(context: context, builder: (context) {
          return AddNotesBottomSheet();
        });
      } , backgroundColor:Colors.lightBlueAccent , child: Icon(Icons.add) , shape: CircleBorder(),) ,
      );
  }
}
