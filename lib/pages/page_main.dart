import 'dart:async';

import 'package:bone_app/components/gradient_flow_box.dart';
import 'package:bone_app/components/main/main_about.dart';
import 'package:bone_app/components/main/main_artist.dart';
import 'package:bone_app/components/main/main_info.dart';
import 'package:bone_app/components/main/main_ticket.dart';
import 'package:bone_app/components/neon_text.dart';
import 'package:bone_app/models/event_poster.dart';
import 'package:bone_app/ui/sliver_appbar_delegate.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List<EventPoster> posterList = [
    new EventPoster('EVENT 1', '2020-01-01', 'assets/images/ad_1.jpg'),
    new EventPoster('EVENT 2', '2020-01-02', 'assets/images/ad_2.jpg'),
    new EventPoster('EVENT 3', '2020-01-03', 'assets/images/ad_3.jpg'),
    new EventPoster('EVENT 4', '2020-01-04', 'assets/images/ad_4.jpg'),
    new EventPoster('EVENT 5', '2020-01-05', 'assets/images/ad_5.jpg'),
  ];

  var _colors = [Colors.deepPurpleAccent, Colors.cyan];
  var _begin = Alignment.centerRight;
  var _end = new Alignment(-1.0, -1.0);
  bool _isTrue = true;

  _MainPageState() {
    Timer.periodic(new Duration(seconds: 3), (timer) {
      if (_isTrue) {
        setState(() {
          _colors = [Colors.cyan, Colors.deepPurpleAccent];
          _begin = Alignment.centerLeft;
          _end = new Alignment(1.0, 1.0);
          _isTrue = false;
        });
      } else {
        setState(() {
          _colors = [Colors.deepPurpleAccent, Colors.cyan];
          _begin = Alignment.centerRight;
          _end = new Alignment(-1.0, -1.0);
          _isTrue = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: DefaultTabController(
        length: 4,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.black,
                expandedHeight: 360.0,
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.menu),
                    tooltip: 'menu',
                    onPressed: () => print('menu open'),
                  ),
                ],
                pinned: true,
                floating: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: NeonText('B.ONE', fontSize: 24,),
                  background: Image.asset(
                    'assets/images/sliver_background.jpg',
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: BoneSliverAppBarDelegate(
                  TabBar(
                    isScrollable: true,
                    indicatorColor: Color(0xfffbeca1),
                    indicatorWeight: 3.0,
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                    unselectedLabelColor: Colors.white,
                    unselectedLabelStyle: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                    tabs: [
                      Tab(text: "BONE"),
                      Tab(text: "EVENT"),
                      Tab(text: "ORDERS"),
                      Tab(text: "RESERVATION"),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    MainAbout(
                      'CLUB B.ONE',
                      'First ever Chinese VIP Night Club On Manila!\nCome and party with us. See you there!',
                      'assets/images/club_1.jpg',
                    ),
                    Container(
                      margin: EdgeInsets.all(30.0),
                      child: Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment(0.25, -1),
                            child: GradientFlowBox(
                              [Colors.orange, Colors.purpleAccent],
                              Alignment.centerRight,
                              Alignment(-1.0, -1.0)
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 55.0, top: 15.0),
                            child: Text(
                              'Open/Close',
                              style: TextStyle(
                                fontSize: 48,
                                fontFamily: 'BebasNeue',
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    MainInfo(
                      ['Thurssday', 'Friday', 'Saturday', 'Sunday'],
                      '23:00',
                      '07:00',
                      'assets/images/club_3.jpg',
                    ),
                    Container(
                      margin: EdgeInsets.all(30.0),
                      child: Stack(
                        children: <Widget>[
                          GradientFlowBox(
                            [Colors.deepPurple, Colors.cyan],
                            Alignment.centerRight,
                            Alignment(-1.0, -1.0),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15.0, top: 15.0),
                            child: Text(
                              'Artist',
                              style: TextStyle(
                                fontSize: 72,
                                fontFamily: 'BebasNeue',
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    MainArtist(),
                    Container(
                      margin: EdgeInsets.all(30.0),
                      child: Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment(0, 0),
                            child: GradientFlowBox(
                              [Colors.greenAccent, Colors.purpleAccent],
                              Alignment.centerRight,
                              Alignment(-1.0, -1.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 55.0, top: 15.0),
                            child: Text(
                              'Ticket',
                              style: TextStyle(
                                fontSize: 72,
                                fontFamily: 'BebasNeue',
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    MainTicket(),
                    Container(
                      margin: EdgeInsets.all(30.0),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: posterList.map((eventPoster) => Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: <Widget>[
                        Text(eventPoster.title, style: TextStyle(color: Colors.white),),
                        Text(eventPoster.date, style: TextStyle(color: Colors.white),),
                        Image.asset(
                          eventPoster.image,
                          width: screenWidth,
                        ),
                      ],
                    ),
                  )).toList(),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: posterList.map((eventPoster) => Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: <Widget>[
                        Text(eventPoster.title, style: TextStyle(color: Colors.white),),
                        Text(eventPoster.date, style: TextStyle(color: Colors.white),),
                        Image.asset(
                          eventPoster.image,
                          width: screenWidth,
                        ),
                      ],
                    ),
                  )).toList(),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: posterList.map((eventPoster) => Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: <Widget>[
                        Text(eventPoster.title, style: TextStyle(color: Colors.white),),
                        Text(eventPoster.date, style: TextStyle(color: Colors.white),),
                        Image.asset(
                          eventPoster.image,
                          width: screenWidth,
                        ),
                      ],
                    ),
                  )).toList(),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
