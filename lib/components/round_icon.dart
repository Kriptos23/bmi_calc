import 'package:flutter/material.dart';

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