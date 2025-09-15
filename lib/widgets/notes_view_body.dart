import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,),
          child: Column(
            children: [
              CustomAppBar(text: "Notes", icon: Icons.search),
              SizedBox(height: 25,),
              Expanded(child: NotesListView()),
            ],
          ),
        ),
      );
  }
}