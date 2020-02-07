import 'package:bone_app/models/event_poster.dart';
import 'package:flutter/material.dart';

class EventView extends StatelessWidget {

  List<EventPoster> posterList = [
    new EventPoster('EVENT 1', '2020-01-01', 'assets/images/ad_1.jpg'),
    new EventPoster('EVENT 2', '2020-01-02', 'assets/images/ad_2.jpg'),
    new EventPoster('EVENT 3', '2020-01-03', 'assets/images/ad_3.jpg'),
    new EventPoster('EVENT 4', '2020-01-04', 'assets/images/ad_4.jpg'),
    new EventPoster('EVENT 5', '2020-01-05', 'assets/images/ad_5.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: posterList.map((eventPoster) => Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              Text(eventPoster.title, style: TextStyle(color: Colors.white),),
              Text(eventPoster.date, style: TextStyle(color: Colors.white),),
              Image.asset(
                eventPoster.image,
              ),
            ],
          ),
        )).toList(),
      ),
    );
  }
}
