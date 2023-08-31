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
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(children: [
            const SizedBox(
              height: 24,
            ),
            CustomTextField(
              onSaved: (value) {
                title = value;
              },
              hint: 'Title',
              maxLines: 1,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              onSaved: (value) {
                subTitle = value;
              },
              hint: 'Content',
              maxLines: 5,
            ),
            const SizedBox(
              height: 16,
            ),
            AddNoteButton(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  setState(() {
                    autovalidateMode = AutovalidateMode.always;
                  });
                }
              },
            ),
          ]),
        ),
      ),
    );
  }
}
