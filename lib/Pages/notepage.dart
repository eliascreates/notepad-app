import 'package:flutter/material.dart';

import '../models/note.dart';

class DetailNote extends StatelessWidget {
  const DetailNote({super.key, required this.note});
  final Note? note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.grey[800],
        title: const Text(
          "Note",
          style: TextStyle(
              fontSize: 30, color: Color.fromARGB(255, 125, 185, 182)),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 24, color: Colors.grey[800]),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(
            left: 8.0, top: 8.0, right: 8.0, bottom: 10.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 240),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  TextField(
                      controller: note != null
                          ? TextEditingController(text: note!.title)
                          : null,
                      decoration: const InputDecoration(
                          labelText: 'Title:',
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 125, 185, 182))),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 105, 165, 162))))),
                  const SizedBox(height: 20),
                  TextField(
                    textAlign: TextAlign.left,
                    autocorrect: true,
                    
                    controller: note != null
                        ? TextEditingController(text: note!.description)
                        : null,
                    maxLines: null,
                    decoration: const InputDecoration(
                        border: InputBorder.none, labelText: 'Description:'),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
