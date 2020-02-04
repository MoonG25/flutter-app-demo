import 'package:bone_app/components/neon_text.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: NeonText('B.ONE', fontSize: 24),
        ),
        body: Column(
          children: <Widget>[
          ],
        ),
      ),
    );
  }
}
