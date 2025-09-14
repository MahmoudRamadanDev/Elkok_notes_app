import 'package:flutter/material.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = "HomeView";    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: ListView(
        children: [
          Text("Hello "),
        ],
      ),
    );
  }
}