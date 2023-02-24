import 'package:flutter/material.dart';

class DetailNote extends StatelessWidget {
  const DetailNote({super.key});

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
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: const [
                  TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 20),
                          labelText: 'Title:',
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 125, 185, 182))),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 105, 165, 162))))),
                  SizedBox(height: 20),
                  TextField(
                    maxLines: null,
                    decoration: InputDecoration(
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
