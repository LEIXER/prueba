import 'package:flutter/material.dart';
import '../models/email.dart';

class EmailWidget extends StatelessWidget {
  final Email email;
  final Function longPress;
  final Function swipe;
  final Function ontap;
  TextStyle allsize = TextStyle(fontSize: 15);

  EmailWidget({
    Key? key,
    required this.email,
    required this.longPress,
    required this.swipe,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onLongPress: () => longPress(email),
        onHorizontalDragEnd: (detalles) => swipe(email),
        onTap: () => ontap(
              email,
              context,
            ),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.black),
            ),
          ),
          margin: EdgeInsets.all(10.0),
          child: Row(children: <Widget>[
            Container(
              width: 10.0,
              height: 10.0,
              decoration: BoxDecoration(
                color: email.read ? Colors.blueGrey : Colors.deepOrange,
                shape: BoxShape.circle,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(email.subject, style: allsize),
                  Text(email.from,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  Text(email.dateTime, style: allsize),
                ],
              ),
            ),
          ]),
        ));
  }
}
