import 'package:flutter/material.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = "HomeView";    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Notes" , style: TextStyle(fontSize: 30 ),),
                  Container(width: 50,height: 50, decoration: BoxDecoration(borderRadius: BorderRadius.circular(16) , color: Colors.white.withValues(alpha: .05)), child: IconButton(onPressed: () {}, icon: Icon(Icons.search , size: 35,))),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}