import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  const Results({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Go back"),
                  style: OutlinedButton.styleFrom(foregroundColor: Colors.white, side: BorderSide(color: Colors.white),
                  textStyle: TextStyle(color: Colors.white))),
              SizedBox(
                width: double.infinity,
              ),
            ],
          ),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
