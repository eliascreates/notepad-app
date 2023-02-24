import 'dart:developer';
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({super.key, required this.date});
  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            date,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey[700]),
          ),
          TextButton(
            style: null,
            onPressed: () {
              log("View All");
            },
            child: Text(
              'View All',
              // style: TextStyle(color: Colors.amber),
              // style: TextStyle(
              //     color:
              //         Color.fromARGB(255, 233, 100, 121)), // rgb(233, 100, 121)
            ),
          )
        ],
      ),
    );
  }
}
