import 'package:flutter/material.dart';
import 'package:notepad/components/page_routes.dart';

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
                    SectionHeader(date: "Hello Mikael"),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: notes.length,
                    itemBuilder: ((context, index) {
                      return NoteWidget(note: notes[index]);
                    })),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(createRoute(null));
        },
        tooltip: 'Add New Note',
        child: const Icon(
          Icons.add,
          size: 35,
        ),
      ),
    );
  }
}
