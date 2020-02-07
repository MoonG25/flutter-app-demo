import 'dart:async';

import 'package:bone_app/components/bone/bone_view.dart';
import 'package:bone_app/components/event/event_view.dart';
import 'package:bone_app/components/neon_text.dart';
import 'package:bone_app/components/order/order_view.dart';
import 'package:bone_app/components/reservation/reservation_view.dart';
import 'package:bone_app/ui/sliver_appbar_delegate.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

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
                    onPressed: () => Scaffold.of(context).openEndDrawer(),
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
              BoneView(),
              EventView(),
              OrderView(),
              ReservationView(),
            ],
          ),
        ),
      ),
      endDrawer: Drawer(
        child: Container(
          color: Colors.black,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Column(
                  children: <Widget>[
                    Center(
                      child: NeonText('B.ONE', fontSize: 24,),
                    ),
                    Container(
                      margin: EdgeInsets.all(15.0),
                    ),
                    Container(
                      width: 75.0,
                      height: 75.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.deepPurple,
                        gradient: LinearGradient(
                          colors: [Colors.deepPurple, Colors.red],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        )
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: NeonText('Signin', fontSize: 18),
              ),
              ListTile(
                title: NeonText('Signup', fontSize: 18),
              ),
              ListTile(
                title: NeonText('Menu A', fontSize: 18),
              ),
              ListTile(
                title: NeonText('Menu B', fontSize: 18),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton:  getFloatingActionButton(),
    );
  }
}

FloatingActionButton getFloatingActionButton() {
  bool isOrder = false;
  if (!isOrder) return FloatingActionButton(
    onPressed: () => print('pressed'),
    child: Icon(Icons.shopping_basket, color: Colors.black),
    backgroundColor: Colors.white,
  );

  return null;
}