import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/calculate_button.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiValue,
      @required this.bmiResult,
      @required this.bmiDescription});

  final String bmiValue;
  final String bmiResult;
  final String bmiDescription;

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
                      bmiResult,
                      style: kBMIResult,
                    ),
                    Text(
                      bmiValue,
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
