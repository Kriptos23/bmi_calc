import 'package:flutter/material.dart';
import 'input_page.dart';
import 'constants.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(kScaffBackColor),
        colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: Color(kSecondaryColor),
        primary: Color(kScaffBackColor),),
      ),
    home: InputPage(),
    );
  }
}


