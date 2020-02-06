import 'dart:async';

import 'package:flutter/material.dart';

class GradientFlowBox extends StatefulWidget {

  var _colors;
  var _firstBegin;
  var _lastBegin;
  var _firstEnd;
  var _lastEnd;

  GradientFlowBox(this._colors, this._firstBegin,
      this._lastBegin, this._firstEnd, this._lastEnd);

  @override
  _GradientFlowBoxState createState() => _GradientFlowBoxState(
    _colors, _firstBegin, _lastBegin, _firstEnd, _lastEnd
  );
}

class _GradientFlowBoxState extends State<GradientFlowBox> {

  var colors;
  var firstBegin;
  var lastBegin;
  var firstEnd;
  var lastEnd;

  var begin;
  var end;
  bool isTrue;

  Timer timer;

  _GradientFlowBoxState(this.colors, this.firstBegin,
      this.lastBegin, this.firstEnd, this.lastEnd) {
    begin = firstBegin;
    end = firstEnd;
    isTrue = true;

    timer = Timer.periodic(new Duration(seconds: 3), (timer) {
      if (isTrue) {
        setState(() {
          colors = [colors[1], colors[0]];
          begin = lastBegin;
          end = lastEnd;
          isTrue = false;
        });
        print('1');
        print(colors.toString());
      } else {
        setState(() {
          colors = [colors[1], colors[0]];
          begin = firstBegin;
          end = firstEnd;
          isTrue = true;
        });
        print('2');
        print(colors.toString());
      }
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
          colors: colors,
          begin: begin,
          end: end
        ),
      ),
    );
  }
}
