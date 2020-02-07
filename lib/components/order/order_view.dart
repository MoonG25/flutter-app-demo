import 'package:flutter/material.dart';

import '../neon_text.dart';

class OrderView extends StatefulWidget {
  @override
  _OrderViewState createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            Container(
              width: 330.0,
              height: 145.0,
              margin: EdgeInsets.only(top: 15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/order_back1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment(-0.9,-0.85),
                    child: NeonText('VIP', fontSize: 14),
                  ),
                  Align(
                    alignment: Alignment(-0.65, -0.2),
                    child: Text('very expoensive\nvip collection', style: TextStyle(
                      color: Colors.white,
                    )),
                  ),
                ],
              ),
            ),
            Container(
              width: 330.0,
              height: 145.0,
              margin: EdgeInsets.only(top: 15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/order_back2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment(-0.9,-0.85),
                    child: NeonText('Champagne', fontSize: 14),
                  ),
                  Align(
                    alignment: Alignment(-0.65, -0.2),
                    child: Text('very expoensive\nchampagne collection', style: TextStyle(
                      color: Colors.white,
                    )),
                  ),
                ],
              ),
            ),
            Container(
              width: 330.0,
              height: 145.0,
              margin: EdgeInsets.only(top: 15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/order_back3.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment(-0.9,-0.85),
                    child: NeonText('Vodka', fontSize: 14),
                  ),
                  Align(
                    alignment: Alignment(-0.65, -0.2),
                    child: Text('very expoensive\nvodka collection', style: TextStyle(
                      color: Colors.white,
                    )),
                  ),
                ],
              ),
            ),
            Container(
              width: 330.0,
              height: 145.0,
              margin: EdgeInsets.only(top: 15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/order_back4.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment(-0.9,-0.85),
                    child: NeonText('FOOD', fontSize: 14),
                  ),
                  Align(
                    alignment: Alignment(-0.65, -0.2),
                    child: Text('very expoensive\nfood collection', style: TextStyle(
                      color: Colors.white,
                    )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
