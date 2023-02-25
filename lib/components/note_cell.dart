import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:notepad/components/page_routes.dart';
import '../Pages/notepage.dart';
import '../models/note.dart';

class NoteWidget extends StatelessWidget {
  const NoteWidget({super.key, required this.note});
  final Note note;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Card(
        color: const Color.fromARGB(255, 255, 255, 240),
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () {
            log("Something happened");
            Navigator.of(context).push(createRoute(note));
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10, right: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  const SizedBox(
                    height: 20,
                    child: Icon(Icons.read_more,
                        size: 16, color: Color.fromARGB(255, 77, 69, 93)),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    note.title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.grey[800]),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const SizedBox(width: 26),
                  SizedBox(
                      width: 260,
                      child: Text(
                        note.description,
                        style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                        overflow: TextOverflow.ellipsis,
                      )),
                ],
              ),
              //const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 26),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          note.date,
                          style:
                              const TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        IconButton(
                            splashRadius: 20,
                            onPressed: () {
                              log("Delete");
                            },
                            icon: const Icon(Icons.delete, size: 18)),
                      ],
                    ),
                  )
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
