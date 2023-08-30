import 'package:flutter/material.dart';
import './custom_app_bar.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.all(8.0),
      child:  Column(
        children: [
          SafeArea(child: CustomAppBar()),
        ],
      ),
    );
  }
}
