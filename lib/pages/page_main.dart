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

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {

  final List<Tab> boneTabs = <Tab>[
    Tab(text: "BONE"),
    Tab(text: "EVENT"),
    Tab(text: "ORDERS"),
    Tab(text: "RESERVATION"),
  ];

  TabController _tabController;
  bool _isOrder = false;

  _handleTabChange() {
    if (_tabController.index == 2) {
      setState(() {
        _isOrder = true;
      });
    } else {
      setState(() {
        _isOrder = false;
      });
    }
  }

  FloatingActionButton getFloatingActionButton() {
    if (_isOrder) return FloatingActionButton(
      onPressed: () => print('pressed'),
      child: Icon(Icons.shopping_basket, color: Colors.black),
      backgroundColor: Colors.white,
    );

    return null;
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: boneTabs.length);
    _tabController.addListener(_handleTabChange);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body:  NestedScrollView(
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
                  controller: _tabController,
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
                  tabs: boneTabs,
                ),
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            BoneView(),
            EventView(),
            OrderView(),
            ReservationView(),
          ],
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