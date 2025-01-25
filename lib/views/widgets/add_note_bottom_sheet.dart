import 'package:flutter/material.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit_cubit.dart';
import 'package:notes_app/views/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: BlocConsumer<AddNoteCubitCubit, SubjectState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return AddNoteForm();
        },
      ),
    );
  }
}
