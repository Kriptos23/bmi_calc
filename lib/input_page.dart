import 'package:flutter/material.dart';
import 'containers.dart';
import 'icon_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'results.dart';

Color maleContainerColor = kPassiveContainer;
Color femaleContainerColor = kPassiveContainer;
MaleOrFemale? gender;

enum MaleOrFemale { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        // backgroundColor: Colors.deepPurple, // Explicitly set the AppBar background color
        // foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Containers(
                      // color: Color(currentContainerMale),
                      color: (gender == MaleOrFemale.male)
                          ? Colors.blue
                          : kPassiveContainer,
                      ContChild: IconWidget(
                        iconG: FontAwesomeIcons.mars,
                        gender: "MALE",
                      ),
                      OnPress: () {
                        setState(() {
                          gender = (gender == MaleOrFemale.male)
                              ? gender = null
                              : MaleOrFemale.male;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: Containers(
                      // color: Color(currentContainerFemale),
                      color: (gender == MaleOrFemale.female)
                          ? Colors.pink
                          : kPassiveContainer,
                      ContChild: IconWidget(
                          iconG: FontAwesomeIcons.venus, gender: "FEMALE"),
                      OnPress: () {
                        setState(() {
                          gender = (gender == MaleOrFemale.female)
                              ? gender = null
                              : MaleOrFemale.female;
                          ;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: Containers(
                  color: kActiveContainer,
                  OnPress: () {},
                  ContChild: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      // crossAxisAlignment: CrossAxisAlignment.baseline,
                      // textBaseline: TextBaseline.alphabetic,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                          child: Text(
                            "HEIGHT",
                            style: kTextGender,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.ideographic,
                          children: [
                            Text(
                              '${kSliderValue.round()}',
                              style: kNumberStyle,
                            ),
                            Text('cm',
                                style: kNumberStyle.copyWith(fontSize: 20))
                          ],
                        ),
                        Expanded(
                          child: SliderTheme(
                            data: SliderThemeData(
                                overlayShape:
                                    RoundSliderOverlayShape(overlayRadius: 30),
                                thumbColor: (gender == MaleOrFemale.male)
                                    ? Colors.blue
                                    : Colors.pink,
                                activeTrackColor: (gender == MaleOrFemale.male)
                                    ? Colors.blue
                                    : Colors.pink),
                            child: Slider(
                                // thumbColor: Colors.red,
                                // activeColor: Color(0xFFE83D66),
                                inactiveColor: Colors.white70,
                                secondaryTrackValue: kSliderValue,
                                value: kSliderValue,
                                max: 230,
                                onChanged: (double value) {
                                  setState(() {
                                    kSliderValue = value;
                                  });
                                }),
                          ),
                        ),
                      ]),
                ))
              ],
            )),
            SizedBox(height: 15),
            Expanded(
                child: Row(children: [
              Expanded(
                  child: Containers(
                color: kActiveContainer,
                ContChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "WEIGHT",
                      style: kTextGender,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("$weight", style: kNumberStyle),
                        Text(" kg", style: kNumberStyle.copyWith(fontSize: 20)),
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      roundIcon(
                          iconG: FontAwesomeIcons.plus,
                          onTap: () {
                            setState(() {
                              (weight <= 362) ? weight++ : null;
                            });
                          }),
                      SizedBox(
                        width: 20,
                      ),
                      roundIcon(
                          iconG: FontAwesomeIcons.minus,
                          onTap: () {
                            setState(() {
                              (weight > 0) ? weight-- : null;
                            });
                          }),
                    ]),
                  ],
                ),
              )),
              Expanded(
                  child: Containers(
                      color: kActiveContainer,
                      ContChild: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "AGE",
                            style: kTextGender,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("$age", style: kNumberStyle),
                            ],
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                roundIcon(
                                    iconG: FontAwesomeIcons.plus,
                                    onTap: () {
                                      setState(() {
                                        (age <= 362) ? age++ : null;
                                      });
                                    }),
                                SizedBox(
                                  width: 20,
                                ),
                                roundIcon(
                                    iconG: FontAwesomeIcons.minus,
                                    onTap: () {
                                      setState(() {
                                        (age > 0) ? age-- : null;
                                      });
                                    }),
                              ]),
                        ],
                      )))
            ])),
            GestureDetector(
              child: Container(
                  width: double.infinity,
                  height: 90,
                  color: Color(kLowerContainer),
                  margin: EdgeInsets.only(top: 15),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                =>Results()));
              },
            )
          ],
        ),
      ),
    );
  }
}



// int currentContainerMale = passiveContainer;
// int currentContainerFemale = passiveContainer;

// void updateContainerColorGender(maleOrFemale a) {
//   if (a == maleOrFemale.male) {
//     // if(maleContainerColor == passiveContainer){
//     //   maleContainerColor = Colors.blue;
//     //   femaleContainerColor = passiveContainer;
//     // }
//     // else{
//     //   maleContainerColor = passiveContainer;
//     //   // femaleContainerColor = activeContainer;
//     // }
//     (maleContainerColor == passiveContainer
//         ? (
//             maleContainerColor = Colors.blue,
//             femaleContainerColor = passiveContainer
//           )
//         : (maleContainerColor = passiveContainer));
//   } else if (a == maleOrFemale.female) {
//     // if(femaleContainerColor == passiveContainer){
//     //   femaleContainerColor = Colors.pink;
//     //   maleContainerColor = passiveContainer;
//     // }
//     // else{
//     //   femaleContainerColor = passiveContainer;
//     //   // maleContainerColor = activeContainer;
//     // }
//     (femaleContainerColor == passiveContainer
//         ? (
//             femaleContainerColor = Colors.pink,
//             maleContainerColor = passiveContainer
//           )
//         : (femaleContainerColor = passiveContainer));
//   }
// }

// void changeGender(MaleOrFemale a){
//   gender = (gender == MaleOrFemale.female)
//       ? gender = null
//       : MaleOrFemale.female;
// }
