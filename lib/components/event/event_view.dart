import 'package:bone_app/components/event/event_post.dart';
import 'package:bone_app/components/neon_text.dart';
import 'package:bone_app/models/event.dart';
import 'package:flutter/material.dart';

class EventView extends StatefulWidget {

  @override
  _EventViewState createState() => _EventViewState();
}

class _EventViewState extends State<EventView> {

  Event selectedEvent = null;

  List<Event> eventList = [
    new Event(1, 'EVENT 1', '2020-01-01', 'assets/images/ad_1.jpg'),
    new Event(2, 'EVENT 2', '2020-01-02', 'assets/images/ad_2.jpg'),
    new Event(3, 'EVENT 3', '2020-01-03', 'assets/images/ad_3.jpg'),
    new Event(4, 'EVENT 4', '2020-01-04', 'assets/images/ad_4.jpg'),
    new Event(5, 'EVENT 5', '2020-01-05', 'assets/images/ad_5.jpg'),
  ];

  getPopup() {
    if (selectedEvent != null) {
      return Container(
        margin: EdgeInsets.all(30.0),
        height: 50.0,
        decoration: BoxDecoration(
            color: Colors.indigo
        ),
        child: Center(
          child: NeonText(selectedEvent.title, fontSize: 18),
        ),
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...eventList.map((event) => EventPost(
            event,
            (evt) {
              print(evt.toString());
              selectedEvent = evt;
            },
          )).toList(),
          getPopup(),
        ],
      ),
    );
  }
}

//class EventView extends StatelessWidget {
//
//  List<Event> posterList = [
//    new Event('EVENT 1', '2020-01-01', 'assets/images/ad_1.jpg'),
//    new Event('EVENT 2', '2020-01-02', 'assets/images/ad_2.jpg'),
//    new Event('EVENT 3', '2020-01-03', 'assets/images/ad_3.jpg'),
//    new Event('EVENT 4', '2020-01-04', 'assets/images/ad_4.jpg'),
//    new Event('EVENT 5', '2020-01-05', 'assets/images/ad_5.jpg'),
//  ];
//
//  @override
//  Widget build(BuildContext context) {
//    return SingleChildScrollView(
//      child: Column(
//        children: posterList.map((event) => EventPost(event)).toList(),
//      ),
//    );
//  }
//}


//Padding(
//padding: const EdgeInsets.all(30.0),
//child: Column(
//children: <Widget>[
//Text(eventPoster.title, style: TextStyle(color: Colors.white),),
//Text(eventPoster.date, style: TextStyle(color: Colors.white),),
//Image.asset(
//eventPoster.image,
//),
//],
//),
//)