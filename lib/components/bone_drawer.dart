import 'package:flutter/material.dart';

import 'neon_text.dart';

class BoneDrawer extends StatefulWidget {
  @override
  _BoneDrawerState createState() => _BoneDrawerState();
}

class _BoneDrawerState extends State<BoneDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
