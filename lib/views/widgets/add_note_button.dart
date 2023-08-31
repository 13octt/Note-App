import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(.5),
        borderRadius: BorderRadius.circular(8),
        // borderRadius: BorderRadius.all(8.0),
      ),
      child: const SizedBox(
          child: TextButton(
              onPressed: null,
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ))),
    );
  }
}
