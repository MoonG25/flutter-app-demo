import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 140,
            color: Colors.grey,
          ),
//          SizedBox(
//            height: 10.0,
//          ),
          Text('Saint-Émilion Grand Cru (Premier Grand Cru Classé) 2009', style: TextStyle(
            color: Colors.white,
            fontSize: 11,
          )),
//          SizedBox(
//            height: 10.0,
//          ),
//          Text('\$ 150,000', style: TextStyle(
//            color: Colors.white,
//            fontSize: 18,
//          )),
        ],
      ),
    );
  }
}
