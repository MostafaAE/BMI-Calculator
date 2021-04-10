import 'package:flutter/material.dart';
import '../constants.dart';

class CalcButton extends StatelessWidget {
  CalcButton({@required this.buttonText, @required this.onPressed});

  final String buttonText;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        width: double.infinity,
        height: kBottomContainerHeight,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 15),
        color: kBottomContainerColour,
        child: Center(
          child: Text(
            buttonText,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
