import 'dart:core';

class Note {
  String title;
  String description;
  String date;
  String? dateDeleted;

  Note(
      {required this.title,
      required this.description,
      required this.date,
      required this.dateDeleted});
}

List<Note> notes = [
  Note(
      title: "Design meeting notes",
      description: "Create a thing that looks good okay",
      date: "22/02/2023",
      dateDeleted: null),
  Note(
      title: "Shadow Game Fighter",
      description: """You don't have to pay a single cent to finish this game.
           But it's so beatiful that you can't help but support their efforts.""",
      date: "22/02/2023",
      dateDeleted: null),
  Note(
      title: "Design meeting notes",
      description: "Create a thing that looks good okay",
      date: "22/02/2023",
      dateDeleted: null),
  Note(
      title: "Design meeting notes",
      description: "Create a thing that looks good okay",
      date: "22/02/2023",
      dateDeleted: null),
  Note(
      title: "Design meeting notes",
      description: "Create a thing that looks good okay",
      date: "22/02/2023",
      dateDeleted: null),
  Note(
      title: "Design meeting notes",
      description: "Create a thing that looks good okay",
      date: "22/02/2023",
      dateDeleted: null),
];
