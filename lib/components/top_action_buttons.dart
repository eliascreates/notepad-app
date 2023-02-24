import 'dart:developer';
import "package:flutter/material.dart";

class TopActionButtons extends StatelessWidget {
  const TopActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            iconSize: 20,
            onPressed: () {
              log("Hello");
            },
            icon: const Icon(Icons.menu)),
        Row(
          children: [
            IconButton(
                iconSize: 20,
                icon: const Icon(Icons.search),
                onPressed: () {
                  log("Hello");
                }),
            IconButton(
                iconSize: 20,
                icon: const Icon(Icons.more_vert),
                onPressed: () {
                  log("Hello");
                }),
          ],
        ),
      ],
    );
  }
}
