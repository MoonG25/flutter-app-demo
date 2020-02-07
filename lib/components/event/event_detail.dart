import 'package:bone_app/components/neon_text.dart';
import 'package:bone_app/models/event.dart';
import 'package:flutter/material.dart';

class EventDetail extends StatelessWidget {

  final Event event;

  EventDetail(this.event);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: NeonText('B.ONE', fontSize: 24),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(event.title, style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            )),
            SizedBox(height: 5.0),
            Text(event.date, style: TextStyle(
              color: Colors.grey,
            )),
            SizedBox(height: 5.0),
            Image.asset(event.image),
            SizedBox(height: 10.0),
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. \nAenean pretium, mi ante elit proin tortor amet, venenatis amet.', style: TextStyle(
              color: Colors.white,
            )),
          ],
        ),
      ),
    );
  }
}
