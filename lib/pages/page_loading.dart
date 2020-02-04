import 'dart:async';

import 'package:bone_app/components/neon_text.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => Navigator.pushReplacementNamed(context, '/main'));
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              'assets/images/club_image_5.jpg',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 133, left: 51),
              child: NeonText('B.ONE'),
            ),
            Container(
              width: 330,
              padding: EdgeInsets.only(top: 11, left: 51),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quis diam dui non, ut amet. Metus quisque id mattis quam tincidunt sapien sed. Phasellus felis mattis vestibulum morbi. Pretium velit semper morbi elementum dui donec vel hac pretium.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
