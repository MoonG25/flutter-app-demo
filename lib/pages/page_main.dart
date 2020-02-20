import 'package:bone_app/components/bone/bone_view.dart';
import 'package:bone_app/components/bone_drawer.dart';
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

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {

  bool _isLoggedIn = false;
  int _selectedIndex = 0;
  final List<Tab> boneTabs = <Tab>[
    Tab(text: "BONE"),
    Tab(text: "EVENT"),
    Tab(text: "ORDERS"),
    Tab(text: "RESERVATION"),
  ];

  List<Widget> _widgetOptions = <Widget>[
    BoneView(),
    EventView(),
    OrderView(),
    ReservationView(),
    Text('profile'),
  ];

  FloatingActionButton getFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () => print('pressed'),
      child: Icon(Icons.shopping_basket, color: Colors.black),
      backgroundColor: Colors.white,
    );

    return null;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:  NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.black,
              expandedHeight: 250.0,
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
          ];
        },
        body: _widgetOptions.elementAt(_selectedIndex),
      ),
      endDrawer: BoneDrawer(),
      floatingActionButton:  getFloatingActionButton(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purpleAccent,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            title: Text('Event'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            title: Text('Shop'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text('Notice'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}