import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteModel});

  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'EditNoteView');
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.amberAccent,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
               ListTile(
                title: Text(
                  noteModel.title,
                  style: const TextStyle(color: Colors.black, fontSize: 32),
                ),
                subtitle: Text(
                  noteModel.subTitle,
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                ),
                trailing:const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 32,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Text(
                  'May 21,2025',
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: 0.9),
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
