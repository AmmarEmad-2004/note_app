import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomTextField(text: 'Title'),
          SizedBox(height: 16),
          CustomTextField(
            text: 'Content',
            maxLine: 6,
          ),
          SizedBox(height: 80),
          CustomBottom(
            buttonText: 'Add',
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key,
    required this.buttonText,
  });
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      width: double.infinity,
      height: 55,
      child: Center(
        child: Text(
          buttonText,
          style: const TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
    );
  }
}
