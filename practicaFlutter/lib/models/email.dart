import 'package:flutter/cupertino.dart';

class Email {
  final int id;
  final String from;
  final String subject;
  final String dateTime;
  final String body;
  final String imagen;
  bool read;

  Email({
    required this.id,
    required this.from,
    required this.subject,
    required this.dateTime,
    required this.body,
    required this.imagen,
    this.read = false,
  });
}
