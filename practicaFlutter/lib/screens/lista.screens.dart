import 'package:flutter/material.dart';
import '../models/bakend.dart';
import '../models/email.dart';
import 'detalle.screens.dart';
import '../widgets/email.widget.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  void longPress(Email email) {
    setState(() {
      Backend().markEmailAsRead(email.id);
    });
  }

  void swipe(Email email) {
    setState(() {
      Backend().deleteEmail(email.id);
    });
  }

  void ontap(Email email, context) {
    setState(() {
      Backend().markEmailAsRead(email.id);
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetalleScreen(email: email)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: Backend()
          .getEmails()
          .map((email) => EmailWidget(
                email: email,
                longPress: longPress,
                swipe: swipe,
                ontap: ontap,
              ))
          .toList(),
    );
  }
}
