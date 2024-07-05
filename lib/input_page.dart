import 'package:flutter/material.dart';
import 'containers.dart';
import 'icon_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'main.dart';

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
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        // currentContainerMale = activeContainer;
                        // currentContainerFemale = passiveContainer;
                        // updateContainerColorGender(maleOrFemale.male);
                        gender = (gender == MaleOrFemale.male) ? gender = null : MaleOrFemale.male;
                      });
                    },
                    child: Containers(
                        // color: Color(currentContainerMale),
                        color: (gender == MaleOrFemale.male) ? Colors.blue : passiveContainer,
                        ContChild: IconWidget(
                            iconG: FontAwesomeIcons.mars, gender: "MALE")),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = (gender == MaleOrFemale.female) ? gender = null : MaleOrFemale.female;
                      });
                    },
                    child: Containers(
                        // color: Color(currentContainerFemale),
                        color: (gender == MaleOrFemale.female) ? Colors.pink : passiveContainer,
                        ContChild: IconWidget(
                            iconG: FontAwesomeIcons.venus, gender: "FEMALE")),
                  ))
                ],
              ),
            ),
            SizedBox(height: 15),
            Expanded(
                child: Row(
              children: [Expanded(child: Containers(color: activeContainer))],
            )),
            SizedBox(height: 15),
            Expanded(
                child: Row(children: [
              Expanded(child: Containers(color: activeContainer)),
              Expanded(child: Containers(color: activeContainer))
            ])),
            Container(
                width: double.infinity,
                height: 90,
                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 15))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

const activeContainer = Color(0xFF34263B);
const passiveContainer = Color(0xFF26263B);
// int currentContainerMale = passiveContainer;
// int currentContainerFemale = passiveContainer;

Color maleContainerColor = passiveContainer;
Color femaleContainerColor = passiveContainer;

enum MaleOrFemale { male, female }

MaleOrFemale? gender;
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
