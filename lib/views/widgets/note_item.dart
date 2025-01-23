import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
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
              const ListTile(
                title: Text(
                  'Flutter Tips',
                  style: TextStyle(color: Colors.black, fontSize: 32),
                ),
                subtitle: Text(
                  'change your self and never give up',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                trailing: Icon(
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
