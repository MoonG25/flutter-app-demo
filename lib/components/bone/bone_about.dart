import 'package:flutter/material.dart';

class BoneAbout extends StatelessWidget {

  String _title;
  String _subtitle;
  String _image;

  BoneAbout(this._title, this._subtitle, this._image);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30.0),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                'ABOUT\n$_title\n',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'BebasNeue',
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                ),
              ),
              Text(
                _subtitle,
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
              _image,
              height: 125.0,
            ),
          )
        ],
      ),
    );
  }
}
