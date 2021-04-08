import 'package:flutter/material.dart';

const cardTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF555766),
);

class IconContent extends StatelessWidget {
  final IconData cardIcon;
  final String cardText;
  IconContent({@required this.cardIcon, @required this.cardText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(cardText, style: cardTextStyle),
      ],
    );
  }
}
