import 'package:bone_app/components/order/order_item.dart';
import 'package:flutter/material.dart';

class OrderView extends StatefulWidget {
  @override
  _OrderViewState createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      primary: false,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 135.0,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => Container(
                  height: 55,
                  width: 120,
                  margin: EdgeInsets.only(left: 15.0, top: 30.0),
                  decoration: BoxDecoration(
                    color: Color(0xff262626),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              height: screenHeight * 60.0 * 6,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('CATEGORY (50)', style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      )),
                      IconButton(
                        icon: Icon(
                          Icons.filter_list,
                          color: Colors.white
                        ),
                        onPressed: () => print('pressed'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: GridView.count(
                scrollDirection: Axis.vertical,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                crossAxisCount: 2,
                shrinkWrap: true,
                children: <Widget>[
                  OrderItem(),
                  OrderItem(),
                  OrderItem(),
                  OrderItem(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
