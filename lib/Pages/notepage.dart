import 'package:flutter/material.dart';

class DetailNote extends StatelessWidget {
  const DetailNote({super.key});

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.grey[800],
        title: const Text("Note"),
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 24, color: Colors.grey[800]),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Hello World'),
        ],
      )),
    );
  }
}
