import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';
import 'add_note_button.dart';
class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(26), topRight: Radius.circular(26)),
      ),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(children: [
          SizedBox(
            height: 24,
          ),
          CustomTextField(
            hint: 'Title',
            maxLines: 1,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'Content',
            maxLines: 5,
          ),
          Spacer(),
          
          AddNoteButton(),
        ]),
      ),
    );
  }
}

