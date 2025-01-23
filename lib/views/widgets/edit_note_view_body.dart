import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 17, vertical: 18),
      child: Column(
        children: [
          CustomAppBar(title: 'Edit Note', icon: Icons.check),
          SizedBox(
            height: 25,
          ),
          CustomTextField(text: 'Title'),
          SizedBox(height: 16),
          CustomTextField(
            text: 'Content',
            maxLine: 6,
          ),
        ],
      ),
    );
  }
}
