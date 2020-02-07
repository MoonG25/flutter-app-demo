import 'package:bone_app/models/ticket.dart';
import 'package:flutter/material.dart';

class BoneTicket extends StatelessWidget {

  List<Ticket> ticketList = [];

  BoneTicket() {
    ticketList.add(new Ticket('VVIP Ticket', 'VVIP', '\$ 500,000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. \nAenean pretium, mi ante elit proin tortor amet, venenatis amet.'));
    ticketList.add(new Ticket('VIP Ticket', 'VIP', '\$ 250,000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. \nAenean pretium, mi ante elit proin tortor amet, venenatis amet.'));
    ticketList.add(new Ticket('A Class Ticket', 'A', '\$ 150,000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. \nAenean pretium, mi ante elit proin tortor amet, venenatis amet.'));
    ticketList.add(new Ticket('B Class Ticket', 'B', '\$ 100,000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. \nAenean pretium, mi ante elit proin tortor amet, venenatis amet.'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30.0),
      child: Column(
        children: ticketList.map((ticket) => Row(
          children: <Widget>[
            Container(
              width: 55.0,
              height: 55.0,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: Color(0xFFD446D7),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(7.0),
              ),
              child: Center(
                child: Text(
                  ticket.grade,
                  style: TextStyle(
                    color: Color(0xFFD446D7),
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        ticket.name,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '\t\t ${ticket.price}',
                        style: TextStyle(
                          color: Colors.yellowAccent,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    ticket.detail,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 9,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )).toList()
      ),
    );
  }
}
