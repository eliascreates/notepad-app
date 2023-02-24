import 'package:flutter/material.dart';

import '../components/note_cell.dart';
import '../components/note_drawer.dart';
import '../components/section_header.dart';
import '../components/top_action_buttons.dart';
import '../models/note.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void addNote() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      drawer: const NoteDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
          child: Column(
            children: [
              const Text(
                "NoteSpace",
                style: TextStyle(
                    fontSize: 30, color: Color.fromARGB(255, 125, 185, 182)),
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
              Expanded(
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: notes.length,
                    itemBuilder: ((context, index) {
                      return NoteWidget(
                          title: notes[index].title,
                          description: notes[index].description,
                          time: notes[index].date);
                    })),
              ),
              const SizedBox(height: 40),
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
