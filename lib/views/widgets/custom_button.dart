import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

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
