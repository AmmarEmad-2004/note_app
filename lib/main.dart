import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_view.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const NotesApp(), // Wrap your app
    ),
  );
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:  {
        'NotesView':(context)=> const NotesView(),
      },
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
         initialRoute: 'NotesView',
    );
  }
}


