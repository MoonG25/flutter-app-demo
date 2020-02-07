import 'package:flutter/material.dart';

import '../gradient_flow_box.dart';
import 'bone_about.dart';
import 'bone_artist.dart';
import 'bone_info.dart';
import 'bone_ticket.dart';

class BoneView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          BoneAbout(
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
          BoneInfo(
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
          BoneArtist(),
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
          BoneTicket(),
          Center(
            child: Text(
              '* 입장료는 요일, 이벤트에 따라 달라질 수 있으며\n클럽 이미지에 맞지 않는 드레스코드는 입장이 제한될 수 있습니다.',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0),
            child: Center(
              child: Text(
                'Club Octagon, B1/B2 NewHilltopHotel, 645, Nonhyeon-ro, Gangnam-gu, Seoul, Korea',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 9,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0),
            child: Center(
              child: Text(
                '© CLUB B.ONE ALL RIGHTS RESERVED.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 9,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(30.0),
          ),
        ],
      ),
    );
  }
}
