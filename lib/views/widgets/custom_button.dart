import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key,
    required this.buttonText,
    this.onTap,
    this.isLoading = false,
  });
  final bool isLoading;
  final String buttonText;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        width: double.infinity,
        height: 55,
        child: Center(
          child: isLoading
              ? const SizedBox(
                  height: 45,
                  width: 45,
                  child: CircularProgressIndicator(
                    strokeWidth: 6,
                    color: Colors.black,
                  ),
                )
              : Text(
                  buttonText,
                  style: const TextStyle(fontSize: 30, color: Colors.black),
                ),
        ),
      ),
    );
  }
}
