import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/note_view.dart';
import 'package:hive/hive.dart';

void main() async {
  await Hive.initFlutter();
  await  Hive.openBox('notes_box');
  Hive.registerAdapter(NoteModelAdapter());

  runApp(const NoteApp());
}

// Thêm note
void addNote(String title, String subTitle, String date, int color) async {
  final noteBox = await Hive.openBox<NoteModel>('notes_box');
  final newNote = NoteModel(title: title, subTitle: subTitle, date: date, color: color);
  noteBox.add(newNote);
}

// Truy vấn danh sách notes
Future<List<NoteModel>> getNotes() async {
  final noteBox = await Hive.openBox<NoteModel>('notes_box');
  return noteBox.values.toList();
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const NoteView(),
    );
  }
}
