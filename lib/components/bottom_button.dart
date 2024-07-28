import 'package:flutter/material.dart';
import '../screens/results.dart';
import '../components/constants.dart';

class bottomButton extends StatelessWidget {
  String? text;
  final void Function()? nextScreen;

  bottomButton({this.text, required this.nextScreen});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: double.infinity,
        height: 90,
        color: Color(kLowerContainer),
        margin: EdgeInsets.only(top: 15),
      child: Text(text??"default button", style: kNumberStyle, textAlign:
      TextAlign.center,)),
      onTap: nextScreen,
    );
  }
}