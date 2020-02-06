import 'package:flutter/material.dart';

class MainInfo extends StatelessWidget {

  List<String> _dates;
  String _open;
  String _close;
  String _image;

  MainInfo(this._dates, this._open, this._close, this._image);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30.0),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment(0.5, 0),
            child: Container(
              margin: EdgeInsets.only(left: 20.0),
              child: Image.asset(
                _image,
                height: 180.0,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                'Doors open\nevery ${_dates[0]}, ${_dates[1]}, ${_dates[2]}\nand ${_dates[3]}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              Text(
                _open,
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
                _close,
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
    );
  }
}
