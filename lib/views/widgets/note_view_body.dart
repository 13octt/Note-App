import 'package:flutter/material.dart';
import './custom_app_bar.dart';
import './note_list_view.dart';

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
            Expanded(child: NoteListView()),
          ],
        ),
      ),
    );
  }
}
