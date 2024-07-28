import 'package:bmi_calc/components/bottom_button.dart';
import 'package:bmi_calc/components/constants.dart';
import 'package:flutter/material.dart';
import '../components/containers.dart';

class Results extends StatelessWidget {
  // String ibm2 = ibm.toStringAsFixed(1);
  final String bmi;
  final String normal;
  final String range;
  final String commentary;
  Results({required this.bmi, required this.commentary, required this.normal,
    required this.range});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        // backgroundColor: Colors.deepPurple, // Explicitly set the AppBar background color
        // foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  "Your Result",
                  style: kNumberStyle,
                  textAlign: TextAlign.center,
                ),
              )),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 8),
              child: Containers(
                color: kPassiveContainer,
                ContChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('$normal',
                        style: kNumberStyle.copyWith(color: Colors.green,
                            fontSize: 30)),
                    Text("$bmi", style: kNumberStyle.copyWith(fontSize: 90)),
                    SizedBox(
                      width: double.infinity,
                    ),
                    Text('$normal BMI range: ', style: kNumberStyle.copyWith
                      (color: Colors.white70,
                        fontSize: 15)),
                    Text('$range', style: kNumberStyle.copyWith(color:
                    Colors.white,
                        fontSize: 15)),
                    Text('$commentary', style:
                    kNumberStyle.copyWith(color: Colors.white,
                        fontSize: 15), textAlign: TextAlign.center,),
                    // OutlinedButton(
                    //     onPressed: () {
                    //       Navigator.pop(context);
                    //     },
                    //     child: Text("Go back"),
                    //     style: OutlinedButton.styleFrom(
                    //         foregroundColor: Colors.white,
                    //         side: BorderSide(color: Colors.white),
                    //         textStyle: TextStyle(color: Colors.white))),
                  ],
                ),
              ),
            ),
          ),
          bottomButton(
            text: "Re-Calculate",
            nextScreen: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      // backgroundColor: Colors.red,
    );
  }
}

