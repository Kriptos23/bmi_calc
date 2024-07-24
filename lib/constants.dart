import 'package:flutter/material.dart';

const TextStyle kTextGender = TextStyle(fontSize: 20, color: Colors.white70,
    fontWeight: FontWeight.w100);
const kActiveContainer = Color(0xFF34263B);
const kPassiveContainer = Color(0xFF26263B);

int kScaffBackColor = 0xFF1D2136;
int kSecondaryColor = 0xFF24263B;
int kLowerContainer = 0xFFEB1555;

double kSliderValue = 1;

int weight = 0;

int age = 0;

TextStyle kNumberStyle = TextStyle(fontSize: 50, color: Colors.white70,
    fontWeight: FontWeight.w500);

class roundIcon extends StatelessWidget {
  final IconData? iconG;

  final void Function()? onTap;

  roundIcon({this.iconG, this.onTap});

  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTap,
      shape: CircleBorder(),
      fillColor: Colors.white,
      constraints: BoxConstraints(minHeight: 50, minWidth: 50),
      child: Icon(iconG, color: Color(0xFF34263B)),
    );
  }
}