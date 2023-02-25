import 'package:flutter/material.dart';

import '../models/note.dart';

class NoteDrawer extends StatelessWidget {
  const NoteDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 245, 233, 207),
      child: ListView(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 125, 185, 182),
            ),
            child: Stack(children: [
              Image.asset(
                'lib/images/india.jpg',
                fit: BoxFit.fill,
              ),
              const Text(
                'My Notes',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ]),
          ),
          ListTile(
            leading: const Icon(
              Icons.notes,
            ),
            title: const Text('All Notes'),
            trailing: Text('${notes.length + 200}'),
          ),
          ListTile(
            leading: const Icon(Icons.book),
            title: const Text('Categories'),
            trailing: Text('${notes.length + 11}'),
          ),
          ListTile(
            leading: const Icon(Icons.star_border_sharp),
            title: const Text('My favourites'),
            trailing: Text('${notes.length + 30}'),
          ),
          const ListTile(
              leading: Icon(Icons.settings), title: Text('Settings')),
        ],
      ),
    );
  }
}
