import 'dart:async';

import 'package:bone_app/components/neon_text.dart';
import 'package:bone_app/models/event_poster.dart';
import 'package:bone_app/ui/sliver_appbar_delegate.dart';
import 'package:flutter/material.dart';

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
        length: 2,
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
                    Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                'ABOUT\nCLUB B.ONE\n',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'BebasNeue',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 24,
                                ),
                              ),
                              Text(
                                'First ever Chinese VIP Night Club On Manila!\nCome and party with us. See you there!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20.0),
                            child: Image.asset(
                              'assets/images/club_1.jpg',
                              height: 125.0,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(30.0),
                      child: Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment(0.0, 0),
                            child: Container(
                              height: 75.0,
                              width: 75.0,
                              decoration: BoxDecoration(
                                gradient: new LinearGradient(
                                  colors: [Colors.orange, Colors.red],
                                  begin: Alignment.centerRight,
                                  end: new Alignment(-1.0, -1.0)
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 55.0, top: 15.0),
                            child: Text(
                              'Info',
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
                    Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment(0.5, 0),
                            child: Container(
                              margin: EdgeInsets.only(left: 20.0),
                              child: Image.asset(
                                'assets/images/club_3.jpg',
                                height: 180.0,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                'Doors open\nevery Thurssday, Friday, Saturday\nand Sunday',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                '23:00',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'BebasNeue',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 24,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(15.0),
                                child: Container(),
                              ),
                              Text(
                                'Doors closed',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                '07:00',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'BebasNeue',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 24,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(30.0),
                      child: Stack(
                        children: <Widget>[
                          AnimatedContainer(
                            duration: Duration(seconds: 3),
                            height: 75.0,
                            width: 75.0,
                            decoration: BoxDecoration(
                              gradient: new LinearGradient(
                                colors: _colors,
                                begin: _begin,
                                end: _end
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15.0, top: 15.0),
                            child: Text(
                              'Crew',
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
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: GestureDetector(
                            child: Image.asset(
                              'assets/images/artist_1.webp',
                            ),
                            onTap: () => print('artist 1'),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            child: Image.asset(
                              'assets/images/artist_2.webp',
                            ),
                            onTap: () => print('artist 2'),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            child: Image.asset(
                              'assets/images/artist_3.webp',
                            ),
                            onTap: () => print('artist 3'),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            child: Image.asset(
                              'assets/images/artist_4.webp',
                            ),
                            onTap: () => print('artist 4'),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            child: Image.asset(
                              'assets/images/artist_5.webp',
                            ),
                            onTap: () => print('artist 5'),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.all(30.0),
                    )
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
              )
            ],
          ),
        ),
      )
    );
  }
}
