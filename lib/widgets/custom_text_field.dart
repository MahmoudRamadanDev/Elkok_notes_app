import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint , this.padding, this.onSaved, this.onChanged});
  final String hint ;
  final double? padding ;
  final  void Function(String?)? onSaved ;
  final void Function(String)? onChanged ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved ,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field Is Required ";
        }else {
          return null ;
        }
      },
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