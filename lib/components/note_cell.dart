import 'dart:developer';
import 'package:flutter/material.dart';
import '../Pages/notepage.dart';

class NoteWidget extends StatelessWidget {
  const NoteWidget(
      {super.key,
      required this.title,
      required this.description,
      required this.time});
  final String something = '';
  final String title;
  final String description;
  final String time;

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
            Navigator.of(context).push(_createRoute());
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
                    title,
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
                        description,
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
                          time,
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

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const DetailNote(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      final tween =
          Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      final offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
