import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/calculate_button.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ResultsPage extends StatelessWidget {
  double bmi = 26.7;
  String bmiState = 'OVERWEIGHT';
  String bmiDescription =
      "You have a higher than normal body weight. Try to exercise more.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kLargeText,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bmiState,
                      style: kBMIResult,
                    ),
                    Text(
                      '$bmi',
                      style: kBMIValue,
                    ),
                    Text(
                      bmiDescription,
                      style: kBMIDescription,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            CalcButton(
              buttonText: 'RE-CALCULATE',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ]),
    );
  }
}
