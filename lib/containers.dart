import 'package:flutter/material.dart';

class Containers extends StatelessWidget {
  // int width1;
  // int height1;
  //
  final Widget? ContChild;
  final Color color;

  Containers({required this.color, this.ContChild});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ContChild,
        margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
        // width: width1?.toDouble(), height: height1?.toDouble()
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15)));
  }
}