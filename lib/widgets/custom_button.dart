
import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
            padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 12),
            width: double.infinity,
            decoration: BoxDecoration(
              color: kThirdColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(child: Text("Add" , style: TextStyle(color: kPrimaryColor , fontSize: 20 ), )),
          );
  }
}