import 'package:flutter/material.dart';

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
          const ListTile(
              leading: Icon(
                Icons.notes,
              ),
              title: Text('All Notes')),
          const ListTile(leading: Icon(Icons.book), title: Text('Categories')),
          const ListTile(
              leading: Icon(Icons.star_border_sharp),
              title: Text('My favourites')),
          const ListTile(
              leading: Icon(Icons.settings), title: Text('Settings')),
        ],
      ),
    );
  }
}
