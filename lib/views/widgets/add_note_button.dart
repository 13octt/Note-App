import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: kPrimaryColor.withOpacity(.5),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const SizedBox(
            child: TextButton(
                onPressed: null,
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ))),
      ),
    );
  }
}
