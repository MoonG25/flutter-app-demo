import 'package:bone_app/models/event.dart';
import 'package:flutter/material.dart';

class EventPost extends StatelessWidget {

  final Event event;

  final ValueChanged<Event> parentAction;

  EventPost(this.event, this.parentAction);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => parentAction(event),
      child: Container(
        margin: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(event.title, style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            )),
            SizedBox(height: 5.0),
            Text(event.date, style: TextStyle(
              color: Colors.grey,
            )),
            SizedBox(height: 5.0),
            Image.asset(event.image),
          ],
        ),
      ),
    );
  }
}
