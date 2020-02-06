import 'dart:async';
import 'package:flutter/material.dart';

class GradientFlowBox extends StatefulWidget {

  List<Color> _colors;
  Alignment _begin;
  Alignment _end;

  GradientFlowBox(this._colors, this._begin, this._end);

  @override
  _GradientFlowBoxState createState() => _GradientFlowBoxState(_colors, _begin, _end);
}

class _GradientFlowBoxState extends State<GradientFlowBox> {

  List<Color> colors;
  Alignment begin;
  Alignment end;

  Timer timer;

  _GradientFlowBoxState(this.colors, this.begin, this.end) {

    timer = Timer.periodic(new Duration(seconds: 3), (timer) {
      setState(() {
        Alignment temp = begin;
        begin = end;
        end = temp;
        colors = colors.reversed.toList();
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 3),
      height: 75.0,
      width: 75.0,
      decoration: BoxDecoration(
        gradient: new LinearGradient(
          colors: new List<Color>.from(colors),
          begin: begin,
          end: end
        ),
      ),
    );
  }
}
