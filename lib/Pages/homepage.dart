import 'dart:developer';

import 'package:flutter/material.dart';

import '../components/note_cell.dart';
import '../components/section_header.dart';
import '../components/top_action_buttons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[150],
      // backgroundColor: const Color.fromARGB(255, 77, 69, 93), //rgb(77, 69, 93)
// Baige
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
          child: Column(
            children: [
              const Text(
                "Notepad",
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    TopActionButtons(),
                    SectionHeader(date: "Today"),
                  ],
                ),
              ),
              const Note(
                time: '12:25 pm',
                description: 'Professional creative design engineer at twitter',
                title: 'Design Engineer',
              ),
              const SectionHeader(date: "Yesterday"),
              const Note(
                time: '9:26 am',
                description: 'Professional programmer at google',
                title: 'Software Engineer',
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Add New Note',
        child: Icon(
          Icons.add,
          size: 35,
        ),
      ),
    );
  }
}
