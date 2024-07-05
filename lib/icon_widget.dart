import 'package:flutter/material.dart';
import 'icon_widget.dart';

const TextStyle textGender = TextStyle(fontSize: 20, color: Colors.white70);

class IconWidget extends StatelessWidget {
  final IconData iconG;
  final String gender;

  const IconWidget({required this.iconG, required this.gender});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Icon(iconG, color: Colors.white70, size: 90),
      Text(gender, style: textGender)
    ]);
  }
}