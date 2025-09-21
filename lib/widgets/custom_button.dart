import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kThirdColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: BlocBuilder<AddNoteCubit, AddNoteStates>(
          builder: (context, state) {
            return Center(
              child: state is AddNoteLoadingState ? CircularProgressIndicator(color: Colors.black,) : Text(
                "Add",
                style: TextStyle(color: kPrimaryColor, fontSize: 20),
              ),
            );
          },
        ),
      ),
    );
  }
}
