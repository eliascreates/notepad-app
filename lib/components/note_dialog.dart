import 'package:flutter/material.dart';

class NoteDialog extends StatelessWidget {
  const NoteDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 245, 231, 185),
      content: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [TextField()],
        ),
      ),
    );
  }
}
