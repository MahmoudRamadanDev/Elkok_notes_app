
import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key ,required this.onTap});
  final void Function()? onTap ;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
          onTap: onTap,
      child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 12),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: kThirdColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(child: Text("Add" , style: TextStyle(color: kPrimaryColor , fontSize: 20 ), )),
            ),
    );
  }
}