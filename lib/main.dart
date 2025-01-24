import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const NotesApp(),
    ),
  );
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'NotesView': (context) => const NotesView(),
        'EditNoteView': (context) => const EditNoteView(),
      },
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: 'NotesView',
    );
  }
}
