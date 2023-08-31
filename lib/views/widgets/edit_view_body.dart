import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edit Note View',
            icon: Icons.check,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(hint: 'title', maxLines: 1),
          SizedBox(
            height: 16,
          ),
          CustomTextField(hint: 'content', maxLines: 5),
        ]),
      ),
    );
  }
}
