import 'package:flutter/material.dart';
import './custom_app_bar.dart';
import './custom_note_item.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomAppBar(),
            NoteItem(),
          ],
        ),
      ),
    );
  }
}
