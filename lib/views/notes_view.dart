import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                  child: AddNoteBottomSheet(),
                );
              },
            );
          },
          child: const Icon(
            Icons.add,
            size: 32,
          ),
        ),
        body: const NotesViewBody());
  }
}
