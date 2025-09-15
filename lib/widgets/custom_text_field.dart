import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint , this.padding});
  final String hint ;
  final double? padding ;
  @override
  Widget build(BuildContext context) {
    return TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 20 , vertical: padding ?? 20),
              hintText: hint ,
              hintStyle: TextStyle(color: kThirdColor),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: kSecondaryColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: kSecondaryColor),
              ),
            ),
          );
  }
}