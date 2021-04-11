import 'package:auto_size_text/auto_size_text.dart';
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
        title: AutoSizeText('BMI CALCULATOR'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: AutoSizeText(
                  'Your Result',
                  style: kLargeText,
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      bmiResult,
                      style: kBMIResult,
                    ),
                    AutoSizeText(
                      bmiValue,
                      style: kBMIValue,
                    ),
                    AutoSizeText(
                      bmiDescription,
                      style: kBMIDescription,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: CalcButton(
                buttonText: 'RE-CALCULATE',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ]),
    );
  }
}
